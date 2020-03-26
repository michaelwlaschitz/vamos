class UsersController < ApplicationController

  def dashboard
    @bookings = current_user.bookings.order(created_at: :asc)
  end
end
