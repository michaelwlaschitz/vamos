class UsersController < ApplicationController

  def dashboard
    @bookings = current_user.ngo_bookings.order(created_at: :asc)
  end
end
