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
    @team = Team.find(params[:booking][:team_id])
    @booking.team = @team

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
    redirect_to user_profile_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to user_profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:team_id)
  end

  def message_params
    params.require(:booking).require(:message).permit(:body)
  end

end
