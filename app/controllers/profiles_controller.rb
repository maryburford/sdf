class ProfilesController < ApplicationController


 def new
 @profile = Profile.new
 end

 def create
  @profile = Profile.new(profile_params)
  @profile.user = current_user

  if @profile.save
  redirect_to @profile
  else
  end
 end

 def show
 if current_user
  @profile = Profile.find(current_user.profile.id)
  @user = @profile.user
 else
  redirect_to new_profile_path
 end
 end

def show_user
@profile = Profile.find(params[:id])
@user = @profile.user
end



 def edit
 @questions = Profile::QUESTIONS.sample(30)


 if current_user
  @profile = Profile.find(current_user.profile.id)
  @user = @profile.user

 else
  redirect_to new_profile_path
 end
end


 def update
 @profile = Profile.find(params[:id])
 @profile.update!(profile_params)
 redirect_to :action => 'edit',:id => Profile.find(current_user.profile.id)
 end

  def shitty_answers
    @profile = Profile.find(current_user.profile.id)
    @questions = Profile::QUESTIONS.sample(30)

  end

def user_answers
    @profile = Profile.find(params[:id])
    @questions = Profile::QUESTIONS.sample(30)

  end

 def update_photo
 @profile = Profile.find(params[:id])
 @profile.update!(profile_params)
 redirect_to :action => 'show',:id => Profile.find(current_user.profile.id)
 end

 private

 def profile_params
 params.require(:profile).permit(:id,:city,:state,:zip_code,:pizza_beer,:concept_reality,:fact_fiction,:theory_practice,:moms_dads,:sandles_socks,:user_id,:created_at,:updated_at,:europe_paris,:profile_photo,:drugs,:trucks,:sleater_kelly,:isp,:crew,:more_less,:reggae_mouse,:jobs,:pets_cats,:red_white,:sport_ball,:meat_murder,:art_commerce,:butler_judith,:fleetwood_mcdonalds,:skate_die,:sanders,:midwest_east,:modest_eek,:pride_prejudice,:dwi_dui,:show_tell,:pat_vanna)
 end

end

