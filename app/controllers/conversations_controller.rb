class ConversationsController < ApplicationController

  def index
    @conversations = policy_scope(Conversation).order(created_at: :desc)
    @user = current_user
  end

  def show
    @user = current_user
    @conversations = policy_scope(Conversation).order(created_at: :desc)
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    if @conversation.user1 == current_user
      @partner = @conversation.user2
    else
      @partner = @conversation.user1
    end

    authorize @conversation
  end
end

