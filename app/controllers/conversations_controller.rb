class ConversationsController < ApplicationController
  def index
    if current_user.ngo_manager?
      @conversations = current_user.ngo_conversations
    else
      @conversations = current_user.team_conversations
    end

    @sorted_convos = @conversations.sort { |a,b| a.messages.last.created_at <=> b.messages.last.created_at }.reverse

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
