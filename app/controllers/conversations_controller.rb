class ConversationsController < ApplicationController
  def index
    @user = current_user
    @conversations = policy_scope(Conversation).order(created_at: :desc)

    authorize @user
    authorize @conversation
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new

    authorize @conversation
    authorize @message
  end
end
