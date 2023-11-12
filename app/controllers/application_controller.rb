class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  include Pundit::Authorization

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  def configure_permitted_parameters
    extra_keys = [:avatar, :username]
    signup_keys = extra_keys
    devise_parameter_sanitizer.permit(:sign_up, keys: signup_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: extra_keys)
  end

  private

  # Pundit
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
end
