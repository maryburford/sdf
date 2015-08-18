class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_photo, ProfilePhotoUploader

end
