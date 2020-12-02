class RequestsController < ApplicationController

  def index
    @requests = policy_scope(Request).order(created_at: :desc)
    @user = policy_scope(User).order(created_at: :desc)
  end

  def new
    @request = Request.new

    @receiver = User.find(params[:runner_id])
    @sender = current_user

    authorize @request
  end

  def create
    @request = Request.new
    @receiver = User.find(params[:runner_id])
    @request.sender_id = current_user.id
    @request.receiver_id = @receiver.id
    @request.status = 'Pending'

    if @request.save
      redirect_to profile_path
    else
      render :new
    end

    authorize @request
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy

    redirect_to profile_path
    authorize @request
  end

  def approve
    @request = Request.find(params[:request_id])
    @request.status = "Approved"
    @request.save

    redirect_to profile_path
    authorize @request
  end

  def reject
    @request = Request.find(params[:request_id])
    @request.status = "Rejected"
    @request.save

    redirect_to profile_path
    authorize @request
  end

  private

  def request_params
    params.require(:request).permit(:start_time, :end_time)
  end
end
