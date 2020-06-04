class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @applications = current_user.applications.order(created_at: :asc)
  end

  def profile
    @user = current_user
    @ngo_applications = current_user.ngo_applications
    @ngo_reviews = current_user.ngo_reviews
  end

  def projects
    @user = current_user
    @ngo_projects = current_user.ngo.projects
    # @projects = current_user.projects.order(created_at: :asc)
  end

end
