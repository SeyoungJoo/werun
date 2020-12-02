class RunnersController < ApplicationController
  def index
    @runners = policy_scope(User).order(created_at: :desc)
  end

  def show
    @runner = User.find(params[:id])

    authorize @runner
  end
end
