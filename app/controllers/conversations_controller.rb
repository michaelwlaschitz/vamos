class ConversationsController < ApplicationController
  def index
    if current_user.ngo_manager?
      @conversations = current_user.ngo_conversations.order(updated_at: :desc)
    else
      @conversations = current_user.team_conversations.order(updated_at: :desc)
    end
    
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @messages.last.read = true if @messages.any? && @messages.last.user_id != current_user.id
    @message = @conversation.messages.new
  end

  private

  def conversation_params
    params.require(:conversation).permit(:ngo_id, :team_id)
  end
end