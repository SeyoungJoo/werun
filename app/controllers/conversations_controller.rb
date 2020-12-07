class ConversationsController < ApplicationController

  def index
    @conversations = policy_scope(Conversation).order(created_at: :desc)
    @user = current_user
    @current_tab = "Messages"
    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end
  end

  def show
    @user = current_user
    @conversations = policy_scope(Conversation).order(created_at: :desc)
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    if @conversation.user1 == current_user
      @partner = @conversation.user2
      @current_tab = @conversation.user2
    else
      @partner = @conversation.user1
      @current_tab = @conversation.user1

    end

    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end

    authorize @conversation
  end

  def create
    @user = current_user
    @partner = User.find(params[:runner_id])
    @conversation = Conversation.find_by(user1: current_user, user2: @partner) || Conversation.find_by(user2: current_user, user1: @partner)

    if @conversation.nil?
      @conversation = Conversation.create(user1: current_user, user2: @partner)
    end

    authorize @conversation
    redirect_to @conversation
  end

end
