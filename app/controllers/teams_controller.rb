class TeamsController < ApplicationController

  def new
    @project = Project.find(params[:id])
    @new_team = Team.new
    @new_team.team_memberships.build
  end

  def create
    raise
    @project = Project.find(params[:team][:id])
    @team = Team.new(team_params)
    if @team.save
      TeamMembership.create(user: current_user, team: @team)
      add_users_to_team()
      redirect_to new_project_booking_path(@project), notice: "Your team has been successfully created !"
    end
  end
  private

  def team_params
    params.require(:team).permit(:name)
  end

  def add_users_to_team
    emails = params[:booking][:team][:team_memberships_attributes].values.map{|hash| hash[:user] }
    # Iterate over all emails to send invitation email
    emails.each do |email|
      # If the user already exists, .invite! will not send an email and instead returns the already existing user
      # If the user doesn't exists, creates a user and sends invitation link.
      user = User.invite!(email: email)
      # assign user to the team
      TeamMembership.create!(user: user, team: @new_team)
    end
  end

end
