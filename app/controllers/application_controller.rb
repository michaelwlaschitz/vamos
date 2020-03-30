class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

protected # can be called by any instance of the same controller (not only inside the class!)
# needed for the invitation form (permitting the params for when a new member accepts an invitation
# and registers.)

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :description, :phone])
  end
end
