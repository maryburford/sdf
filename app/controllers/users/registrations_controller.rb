class Users::RegistrationsController < Devise::RegistrationsController

  def matches

  end

  private

  def sign_up_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:user_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

  def after_sign_up_path_for(user)
    new_profile_path
  end
end
