class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  layout "home_page"
  def home
    if user_signed_in?
      @received_requests = current_user.received_requests
      @pending_requests =[]

      @received_requests.each do |request|
        if request.status == "Pending"
          @pending_requests.push(request)
        end
      end
    else
    end
  end
end
