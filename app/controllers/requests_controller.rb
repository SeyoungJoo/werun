class RequestsController < ApplicationController
  def new
    @request = Request.new

    @receiver = User.find(params[:id])
    @sender = current_user
  end

  def create
    @request = Request.new(request_params)
    @request.sender_id = current_user.id
    @request.receiver_id = @receiver.id
    @request.status = 'Pending'

    if @request.save
      redirect_to page_path(current_user.id)
    else
      render :new
    end
  end

  def destroy
    # @request = Request.find(params[:id])
    # @request.sender_id = @sender.id
    # @request.receiver_id = current_user.id



  end

  private

  def request_params
    params.require(:request).permit(:start_time, :end_time)
  end
end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @bag = @booking.bag
  #   @booking.destroy
  #   redirect_to bag_path(@bag)
  # end

  # def approve
  #   @booking = Booking.find(params[:booking_id])
  #   @bag = @booking.bag
  #   @bag.available = false
  #   @booking.approved = true
  #   @booking.save
  #   @bag.save
  #   redirect_to dashboard_path(current_user.id)
  # end

  # private

  # def booking_params
  #   params.require(:booking).permit(:start_date, :end_date, :bag_id)
  # end
