class TracksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]
  def index
    @tracks = policy_scope(Track).order(created_at: :desc)

    if params[:query].present?
      @tracks = Track.where("name ILIKE ?", "%#{params[:query]}%")

    else
      @tracks = policy_scope(Track).order(created_at: :desc)
    end

    @markers = @tracks.geocoded.map do |track|
      {
        lat: track.latitude,
        lng: track.longitude,
        infoWindow: render_to_string(partial: "shared/info_window_track", locals: { track: track }),
        id: track.id,
        image_url: helpers.asset_url('marker.png')
      }
    end

    @current_tab = "Tracks"
    if current_user
    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end
  end
  end

  def show
    @track = Track.find(params[:id])
    @received_requests = current_user.received_requests
    @sent_requests = current_user.sent_requests
    @pending_requests =[]
    @current_tab = "Tracks"
    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end
    authorize @track
  end

  def new
    @track = Track.new

    @current_tab = "Tracks"
    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end

    authorize @track
  end


  def create
    @track = Track.new(track_params)
    @track.user = current_user

    @current_tab = "Tracks"
    @received_requests = current_user.received_requests
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end

    if @track.save
      redirect_to tracks_path
    else
      render :new
    end

    authorize @track
  end

  def like
    @track = Track.find(params[:id])
    Like.create(user_id: current_user.id, track_id: @track.id)
  end

  private

  def track_params
    params.require(:track).permit(:name, :description, :keyword, :address, :image)
  end
end
