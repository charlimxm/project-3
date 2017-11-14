class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, :configure_permitted_parameters_2, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_permitted_parameters_2
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :owner, :photourl])
  end
end
