class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :profile_photo, ProfilePhotoUploader
  
  QUESTIONS = [
  	[:pizza_beer,"Pizza or Beer?", ["Pizza","Beer","Both"]],
    [:concept_reality, "Concept or Reality?", ["Concept","Reality","Both"]],
    [:fact_fiction, "Fact or Fiction?", ["Fact","Fiction","Both"]]
  ]
end
