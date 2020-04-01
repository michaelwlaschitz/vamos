class MessagesController < ApplicationController
  before_action :set_conversation
  
  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    if @message.save
    redirect_to conversation_path(@conversation)
    end
  end

private

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
  def message_params
    params.require(:message).permit(:body)
  end

end
