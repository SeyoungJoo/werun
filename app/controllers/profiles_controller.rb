class ProfilesController < ApplicationController
  def show
    @user = current_user
    @received_requests = current_user.received_requests
    @sent_requests = current_user.sent_requests
    @events = current_user.user1_events + current_user.user2_events
    @current_tab = "Calendar"
    @pending_requests =[]

    @received_requests.each do |request|
      if request.status == "Pending"
        @pending_requests.push(request)
      end
    end

    authorize @user
  end

  def edit
    @user = current_user

    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to profile_path
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :address, :level, :email, :ing, :lat, :image)
  end
end
