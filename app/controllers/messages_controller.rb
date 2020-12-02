class MessagesController < ApplicationController
  def new
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      ConversationChannel.broadcast_to(@conversation, render_to_string(partial: "message", locals: { message: @message }))
      redirect_to conversation_path(@conversation, anchor: "message-#{@message.id}")
    else
      render "conversations/show"
    end

    authorize @message
    authorize @conversation
  end

  private
  def message_params
    params.require(:message).permit(:contents)
  end
end
