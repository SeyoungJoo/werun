class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @received_requests = current_user.received_requests
    @sent_requests = current_user.sent_requests
  end
end
