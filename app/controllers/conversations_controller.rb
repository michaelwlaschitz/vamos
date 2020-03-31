class ConversationsController < ApplicationController
  def index
    @conversations = current_user.conversations
  end

  def create
    if Conversation.between(params[:ngo_id],params[:team_id]).present?
    @conversation = Conversation.between(params[:ngo_id],
     params[:team_id]).first
    else
    @conversation = Conversation.create!(conversation_params)
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:ngo_id, :team_id)
  end
end
