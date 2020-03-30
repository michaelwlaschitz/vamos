class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @bookings = current_user.bookings.order(created_at: :asc)
  end

  def profile
    @user = current_user
  end

end
