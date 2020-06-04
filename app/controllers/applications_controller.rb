class ApplicationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @teams = current_user.teams
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @application.status = "pending"
    @project = Project.find(params[:project_id])
    @application.project = @project
    @team = Team.find(params[:application][:team_id])
    @application.team = @team

    if @application.save
      @conversation = Conversation.create(application: @application)
      @message = Message.new(message_params)
      @message.conversation = @conversation
      @message.user = current_user
      @message.save
      # create a new message from the form to start the conversation
      redirect_to application_confirmation_path(@application) #the button for team-creation and for Contacting the NGO now is the same.
    else
      render :new
    end
  end

   def index
    @user = current_user
    @ngo_applications = current_user.ngo_applications
    @applications = current_user.applications.order(created_at: :asc)
  end

  def show
    @application = Application.find(params[:id])
    @team = @application.team
  end


  def confirmation
    @application = Application.find(params[:application_id])
  end

  def accept_applications
    @application = Application.find(params[:id])
    @application.status = "accepted"
    @application.save
    redirect_to applications_path
  end

  def reject_applications
    @application = Application.find(params[:id])
    @application.status = "rejected"
    @application.save
    redirect_to applications_path
  end

  def accept_conversation
    @application = Application.find(params[:id])
    @application.status = "accepted"
    @application.save
    @conversation = @application.conversation
    redirect_to conversation_path(@conversation)
  end

  def reject_conversation
    @application = Application.find(params[:id])
    @application.status = "rejected"
    @application.save
    @conversation = @application.conversation
    redirect_to conversation_path(@conversation)
  end

  private

  def application_params
    params.require(:application).permit(:team_id, :start_date, :end_date, :start_time, :end_time)
  end

  def message_params
    params.require(:application).require(:message).permit(:body)
  end

end
