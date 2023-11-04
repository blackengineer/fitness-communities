class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    extra_keys = [:username]
    signup_keys = extra_keys
    devise_parameter_sanitizer.permit(:sign_up, keys: signup_keys)
    devise_parameter_sanitizer.permit(:account_update, keys: extra_keys)
  end
end
