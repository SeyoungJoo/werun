class RunnersController < ApplicationController
  def index
    @runners = policy_scope(User).order(created_at: :desc)
      if params[:query].present?
        @runners = User.search_by_address(params[:query])
      else
        @runners = policy_scope(User).order(created_at: :desc)
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
