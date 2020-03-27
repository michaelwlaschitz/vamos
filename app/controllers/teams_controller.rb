class TeamsController < ApplicationController

  def create
    @team = Team.new(team_params)
    if @team.save
      TeamMembership.create(user: current_user, team: @team)
      redirect_to new_project_booking_path(team_params[:selected_project]), notice: "Your team has been successfully created !"
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :photo, :selected_project)
  end

end
