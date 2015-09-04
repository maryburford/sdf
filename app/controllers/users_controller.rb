class UsersController < ApplicationController
  def matches
  	@random_users = User.joins(:profile).select('profiles.id, users.user_name, users.id, profiles.profile_photo, users.turds').limit(5).order("RANDOM()")
  end

  def add_turd
    @profile = Profile.find(params[:id])
    @user = @profile.user

    @user.turds = @user.turds + 1
    @user.save!

    redirect_to profiles_show_path({id: params[:id]})

  end

  def add_turd_matches_view
    @profile = Profile.find(params[:id])
    @user = @profile.user

    @user.turds = @user.turds + 1
    @user.save!

    redirect_to profiles_show_path({id: params[:id]})

  end

private

  def user_params
   params.require(:user).permit(:profile_id, :turds)
  end


end
