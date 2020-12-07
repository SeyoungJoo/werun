class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  layout "home_page"
  def home
  end

end
