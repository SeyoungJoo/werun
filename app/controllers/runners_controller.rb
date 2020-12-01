class RunnersController < ApplicationController
  def index
    @runners = User.all
  end

  def show
    @runner = User.find(params[:id])
  end
end
