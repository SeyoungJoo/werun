class LikesController < ApplicationController
    before_action :find_track

    def create
       @track.likes.where(user_id: current_user.id).first_or_create
    end

    private

    def find_track
        @track = Track.find(params[:track_id])
    end
    

end
