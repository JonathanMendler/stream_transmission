class StatsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @stats = Stat.all
    render :index
  end

  def create
    if current_user
      @stat = Stat.create(
        user_id: current_user.id,
        game_id: params[:game_id],
        avg_viewers: params[:avg_viewers],
        time_streamed: params[:time_streamed],
        followers_gained: params[:followers_gained],
        review: params[:review],
      )
      render :show
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    @stat = current_user.stats.find_by(id: params["id"])
    render :show
  end

  def update
    @stat = Stat.find_by(id: params[:id])
    @stat.update(
      avg_viewers: params[:avg_viewers],
      time_streamed: params[:time_streamed],
      followers_gained: params[:followers_gained],
      review: params[:review],
    )
    render :show
  end
end
