class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @teams = current_user.teams
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
      add_users_to_team()
    end #this if-else statement is making sure that a team is only created if no team is selected from the dropdown-menu ()

    if @booking.save
      @conversation = Conversation.create(booking: @booking)
      @message = Message.new(message_params)
      @message.conversation = @conversation
      @message.user = current_user
      @message.save
      # create a new message from the form to start the conversation
      redirect_to booking_confirmation_path(@booking) #the button for team-creation and for Contacting the NGO now is the same.
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to user_profile_path(current_user)
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to user_profile_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:team_id, :hours_per_week)
  end

  def team_params
    params.require(:booking).require(:team).permit(:name, :photo)
  end

  def message_params
    params.require(:booking).require(:message).permit(:body)
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
