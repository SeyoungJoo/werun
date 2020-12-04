class TracksController < ApplicationController
  def index
    @tracks = policy_scope(Track).order(created_at: :desc)
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
      # redirect_to track_path
    else
      render :new
    end

    authorize @track
  end

  private

  def track_params
    params.require(:track).permit(:name, :address, :description, :keyword, :start_lng, :end_lng, :start_lat, :end_lat)
  end
end
