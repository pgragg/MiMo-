class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :set_current_user
  before_action :authenticate_user!
  helper_method :groups?

  def groups?
    if current_user
      return current_user.groups.count >= 1 
    end
  end 

  private 

  def configure_permitted_parameters
    params = [:first_name, :last_name, :address_from, :budget]
    # devise_parameter_sanitizer.for(:sign_up) 
    devise_parameter_sanitizer.for(:account_update) << params 
  end

end
