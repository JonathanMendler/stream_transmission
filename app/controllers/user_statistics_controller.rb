class UserStatisticsController < ApplicationController
  def index
    @user_statistics = UserStatistic.all
    render :index
  end

  def create
    @user_statistics = UserStatistic.create(
      game_id: params[:game_id],
      user_id: params[:user_id],
      avg_viewers: params[:avg_viewers],
      time_streamed: params[:time_streamed],
      followers_gained: params[:followers_gained],
    )
    render :show
  end
end
