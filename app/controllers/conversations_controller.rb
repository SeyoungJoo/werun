class ConversationsController < ApplicationController
  def index
  end
  
  def show
    @user = current_user
    @conversations = Conversation.all
    @conversation = Conversation.find(params[:id]) 
    @message = Message.new
  end
end
