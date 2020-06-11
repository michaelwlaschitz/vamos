class ApplicationController < ActionController::Base
  around_action :set_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

helper_method :resource_name, :resource, :devise_mapping, :resource_class
def resource_name
  :user
end

def set_locale(&action)
  locale = params[:locale] || I18n.default_locale
  I18n.with_locale(locale, &action)
end

def default_url_options
  { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
end

def resource
  @resource ||= User.new
end

def resource_class
  User
end

def devise_mapping
  @devise_mapping ||= Devise.mappings[:user]
end

protected # can be called by any instance of the same controller (not only inside the class!)
# needed for the invitation form (permitting the params for when a new member accepts an invitation
# and registers.)

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :description, :phone, :photo])
  devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])
  devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo, :description, :phone])
end

end

