class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @teams = current_user.teams
    @booking = Booking.new
    raise
  end

  def create
    @booking = Booking.new(
      {status: "pending"}
    )
    @project = Project.find(params[:project_id])
    @team = Team.find(params[:team_id])
    @booking.project = @project
    @booking.team = @team
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

end
