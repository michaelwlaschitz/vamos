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

    if params[:booking][:team].present? && booking_params[:team_id].blank? #Here we are passing two params as we have a nested form on the site (one for bookings, one for team-creation)
      @new_team = Team.create(team_params)
      @booking.team = @new_team
      TeamMembership.create(user: current_user, team: @new_team)
    end #this if-else statement is making sure that a team is only created if no team is selected from the dropdown-menu ()

    if @booking.save
      redirect_to dashboard_path #the button for team-creation and for Contacting the NGO now is the same.
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:team_id, :hours_per_week)
  end

  def team_params
    params.require(:booking).require(:team).permit(:name, :photo)
  end
end
