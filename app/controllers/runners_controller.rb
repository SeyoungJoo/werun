class RunnersController < ApplicationController
  def index
    @runners = policy_scope(User).order(created_at: :desc)
    if params[:address].present?
      address_query = "address ILIKE :query"
      @runners = @runners.where(address_query, query: "%#{params[:address_query]}%")
    end

    if params[:gender].present?
      @runners = @runners.where(gender: params[:gender])
    end

    if params[:level].present?
      @runners = @runners.where(level: params[:level])
    end

    if params[:preferred_day].present?
      @runners = @runners.where(preferred_day: params[:preferred_day])
    end

    if params[:preferred_time].present?
      @runners = @runners.where(preferred_time: params[:preferred_time])
    end


    @markers = @runners.geocoded.map do |runner|
        if runner == current_user
          {
          lat: runner.latitude,
          lng: runner.longitude,
          image_url:helpers.asset_url('my-location.JPG')
        }
      else
        {
          lat: runner.latitude,
          lng: runner.longitude,
          image_url: Cloudinary::Utils.cloudinary_url(runner.image.key),
          id: runner.id
        }
      end
    end
    @current_tab = "Map"
    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end
  end

  def show
    @runner = User.find(params[:id])
    authorize @runner
  end
end
