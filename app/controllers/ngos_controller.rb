class NgosController < ApplicationController

  def dashboard
    if current_user.ngo
      @bookings = current_user.ngo_bookings
    else
      redirect_to root_path
      # change this to create new ngo later
    end
  end

end
