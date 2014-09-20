class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include UrlHelper
  before_action :authenticate_user!
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?


  def main_subdomain_url(subdomain, extras = {})
    if current_user
      root_url(extras.merge(:subdomain => subdomain))
    else
      new_user_session_url(extras.merge(:subdomain => subdomain))
    end
  end

  def after_sign_in_path_for(resource, extras = {})
    if current_user.present?
      main_subdomain_url(current_user.name, extras)
    end
  end

  def after_sign_out_path_for(resource, extras = {})
    if current_user.present?
      main_subdomain_url(false, extras)
    end
  end

  protected


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name,:email, :password, :password_confirmation, :role) }
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name,:email, :password, :password_confirmation, :role)
    end
  end

end
