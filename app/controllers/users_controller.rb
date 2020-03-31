class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @bookings = current_user.bookings.order(created_at: :asc)
  end

  def profile
    @user = current_user
    @ngo_bookings = current_user.ngo_bookings
  end

end
