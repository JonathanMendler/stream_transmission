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
end
