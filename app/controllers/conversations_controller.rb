class ConversationsController < ApplicationController
  def index
    @user = current_user
    @conversations = Conversation.all
  end
  
  def show
    @conversation = Conversation.find(params[:id]) 
    @message = Message.new
  end
end
