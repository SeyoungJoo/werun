class RequestsController < ApplicationController

  def index
    @requests = Request.all
    @user = User.all
  end

  def new
    @request = Request.new

    @receiver = User.find(params[:runner_id])
    @sender = current_user
  end

  def create
    @request = Request.new(request_params)
    @receiver = User.find(params[:runner_id])
    @request.sender_id = current_user.id
    @request.receiver_id = @receiver.id
    @request.status = 'Pending'

    if @request.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to profile_path
  end

  def approve
    @request = Request.find(params[:request_id])
    @request.status = "Approved"
    @request.save

    redirect_to profile_path
  end

  def reject
    @request = Request.find(params[:request_id])
    @request.status = "Rejected"
    @request.save

    redirect_to profile_path
  end

  private

  def request_params
    params.require(:request).permit(:start_time, :end_time)
  end
end
