class EventsController < ApplicationController

  def new
    @event = Event.new

    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user1 = current_user
    @user2 = User.find(params[:runner_id])

    @event.user2 = @user2

    if @event.save
      redirect_to profile_path
    else
      render :new
    end

    authorize @event
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :end_time, :location)
  end
end







