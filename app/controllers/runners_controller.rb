class RunnersController < ApplicationController
  def index
    @runners = policy_scope(Runner).order(created_at: :desc)
  end

  def show
    @runner = User.find(params[:id])

    authorize @runner
  end
end
