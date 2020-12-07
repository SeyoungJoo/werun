class TracksController < ApplicationController
  def index
    @tracks = policy_scope(Track).order(created_at: :desc)

    if params[:query].present?
      @tracks = Track.search_by_address(params[:query])
    else
      @tracks = policy_scope(Track).order(created_at: :desc)
    end

    @markers = @tracks.geocoded.map do |track|
      {
        lat: track.latitude,
        lng: track.longitude,
        infoWindow: render_to_string(partial: "shared/info_window_track", locals: { track: track }),
        image_url: Cloudinary::Utils.cloudinary_url(track.image.key)
      }
    end
  end

  def show
    @track = Track.find(params[:id])
    authorize @track
  end

  def new
    @track = Track.new

    authorize @track
  end

  def create
    @track = Track.new(track_params)

    if @track.save
       redirect_to track_path
    else
      render :new
    end

    authorize @track
  end

  private

  def track_params
    params.require(:track).permit(:name, :description, :keyword, :address)
  end
end
