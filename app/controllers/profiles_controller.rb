class ProfilesController < ApplicationController


  def new
    @profile = Profile.new
  end

  def create
      @profile = Profile.new(profile_params)
      if @profile.save
        redirect_to @profile
      else
      end
  end

  def show
    if params[:id]
      @profile = Profile.find(params[:id])
      @user = @profile.user
    else
      redirect_to new_profile_path
    end
  end


  private

  def profile_params
    params.require(:profile).permit(:id, :city, :state, :zip_code, :pizza_beer, :concept_reality, :concept_reality, :fact_fiction, :theory_practice, :moms_dads, :sandles_socks, :user_id, :created_at, :updated_at, :europe_paris, :profile_photo)
  end

end

