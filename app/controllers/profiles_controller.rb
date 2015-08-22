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
    if params[:id]
      @profile = Profile.find(params[:id])
      @user = @profile.user
    else
      redirect_to new_profile_path
    end
  end

  def edit
    if params[:id]
      @profile = Profile.find(params[:id])
      @user = @profile.user
    else
      redirect_to new_profile_path
  end
end
  def update
    @profile = Profile.find(params[:id])
    @profile.update_attributes(params[:profile])
    redirect_to :action => 'show', :id => @profile
    end



  private

  def profile_params
    params.require(:profile).permit(:id, :city, :state, :zip_code, :pizza_beer, :concept_reality, :fact_fiction, :theory_practice, :moms_dads, :sandles_socks, :user_id, :created_at, :updated_at, :europe_paris, :profile_photo)
  end

end

