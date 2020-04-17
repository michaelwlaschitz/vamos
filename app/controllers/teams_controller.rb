class TeamsController < ApplicationController

  def new
    @project = Project.find(params[:id])
    @new_team = Team.new
    @new_team.team_memberships.build
  end

  def create
    @project = Project.find(params[:team][:id])
    @team = Team.new(team_params)
    if @team.save
      TeamMembership.create(user: current_user, team: @team)
      redirect_to new_project_booking_path(@project), notice: "Your team has been successfully created !"
    end
  end
  private

  def team_params
    params.require(:team).permit(:name)
  end

end
