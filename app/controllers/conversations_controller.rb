class ConversationsController < ApplicationController
  def index
    @conversations = policy_scope(Conversation)
    @user = current_user
  end

  def show
    @user = current_user
    @conversations = policy_scope(Conversation).order(created_at: :desc)
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    authorize @conversation
  end
end
