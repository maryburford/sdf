class UsersController < ApplicationController
  def matches
  	@random_users = User.joins(:profile).select('profiles.id, users.user_name, users.id, profiles.profile_photo').limit(5).order("RANDOM()")
  end


end
