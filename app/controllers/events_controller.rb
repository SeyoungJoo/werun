class EventsController < ApplicationController
  def new
    @event = Event.new
    @user1 = current_user
    @user2 = User.find(params[:runner_id])

    authorize @event
  end

  def create
    @event = Event.new
    @user1 = current_user
    @user2 = User.find(params[:runner_id])

    @event.user1_id = @user1.id
    @event.user2_id = @user2.id

    if @event.save
      redirect_to profile_path
    else
      render :new
    end

    authorize @event
  end
end
