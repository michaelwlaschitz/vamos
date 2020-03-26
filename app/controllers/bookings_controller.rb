class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @teams = current_user.teams
    @new_team = Team.new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @project = Project.find(params[:project_id])
    @booking.project = @project
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:team_id, :hours_per_week)
  end
end
