class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @bookings = current_user.bookings.order(created_at: :asc)
  end

  def profile
    @user = current_user
    @ngo_bookings = current_user.ngo_bookings
    @ngo_reviews = current_user.ngo_reviews
  end

  def applications
    @user = current_user
    @ngo_bookings = current_user.ngo_bookings
    @bookings = current_user.bookings.order(created_at: :asc)
  end

  def projects
    @user = current_user
    @ngo_projects = current_user.ngo.projects
    # @projects = current_user.projects.order(created_at: :asc)
  end

end
