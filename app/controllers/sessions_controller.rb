class Admins::SessionsController < Devise::SessionsController
  before_action :configure_permitted_parameters
  def sign_in
  end

  def logout
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
  end
end
