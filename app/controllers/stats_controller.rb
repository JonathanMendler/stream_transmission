class StatsController < ApplicationController
  def index
    @stats = Stat.all
    render :index
  end

  def create
    @stat = Stat.create(
      user_id: current_user.id,
      game_id: params[:game_id],
      avg_viewers: params[:avg_viewers],
      time_streamed: params[:time_streamed],
      followers_gained: params[:followers_gained],
      review: params[:review],
    )
    render :show
  end

  def show
    @stat = Stat.find_by(id: params[:id])
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
