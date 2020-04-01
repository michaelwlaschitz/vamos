class MessagesController < ApplicationController
  before_action set_messages_id

  def create
    @message = @conversation.messages.new(message_params)
    if @message.save
    redirect_to conversation_messages_path(@conversation)
    end
  end

private

  def set_messages_id
    @conversation = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:body, :user_id)
  end

end
