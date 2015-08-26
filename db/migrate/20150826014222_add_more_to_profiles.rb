class AddMoreToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :whoami, :string
  end
end
