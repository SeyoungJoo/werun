class RunnersController < ApplicationController
  def index
    @runners = policy_scope(User).order(created_at: :desc).where.not(latitude: nil, longitude: nil)
    
    @markers = @runners.geocoded.map do |runner|
      {
        lat: runner.latitude,
        lng: runner.longitude,
        infoWindow: render_to_string(partial: "shared/info_window", locals: { runner: runner }),
        image_url: Cloudinary::Utils.cloudinary_url(runner.image.key)
      }
    end
  end

  def show
    @runner = User.find(params[:id])
    authorize @runner
  end
end
