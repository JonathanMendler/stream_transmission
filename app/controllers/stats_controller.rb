class StatsController < ApplicationController
  def index
    @stats = Stat.all
    render :index
  end

  def create
    @stat = Stat.create(
      user_id: params[:user_id],
      game_id: params[:game_id],
      avg_viewers: params[:avg_viewers],
      time_streamed: params[:time_streamed],
      followers_gained: params[:followers_gained],
    )
    render :show
  end

  def update
    @stat = Stat.find_by(id: params[:id])
    @stat.update(
      avg_viewers: params[:avg_viewers],
      time_streamed: params[:time_streamed],
      followers_gained: params[:followers_gained],
    )
  end
end
