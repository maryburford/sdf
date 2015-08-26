# encoding: utf-8

class ProfilePhotoUploader < CarrierWave::Uploader::Base

  def cache_dir
       "#{Rails.root}/tmp/uploads"
    end

  # Override the directory where uploaded files will be stored.   
  # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

  # Provide a default URL as a default if there hasn't been a file uploaded:
    def default_url
      "/assets/fallback/" + [version_name, "default.gif"].compact.join('_')
    end   
  
  # Create different versions of your uploaded files:
    version :large do
       process :resize_to_fill => [360, 300]
    end

    version :thumb do
      process :resize_to_fill => [75, 75]
    end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
    def extension_white_list
       %w(jpg jpeg gif png)
    end
end

# Then add the following to your carrierwave.rb initializer:
# Configuration for Amazon S3
CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => ENV['S3_REGION']
    }

  # For testing, upload files to local `tmp` folder.
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.storage = :fog
  end

  # To let CarrierWave work on heroku
  config.cache_dir = "#{Rails.root}/tmp/uploads" 
  config.fog_directory = ENV['S3_BUCKET_NAME']
end
