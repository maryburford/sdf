class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    puts "what"
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
  end

  def devise_parameter_sanitizer
    super # Use the default one
  end
end