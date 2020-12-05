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
          image_url: Cloudinary::Utils.cloudinary_url(runner.image.key)
        }
      end
    end
  end

  def show
    @runner = User.find(params[:id])
    authorize @runner
  end
end
