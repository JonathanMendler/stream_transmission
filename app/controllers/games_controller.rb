class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end

  def create
    @game = Game.create(
      name: params[:name],
      genre: params[:genre],
      player_support: params[:player_support],
      image_url: params[:image_url],
    )
    render :show
  end

  def show
    @game = Game.find_by(id: params[:id])
    render :show
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(
      name: params[:name],
      genre: params[:genre],
      player_support: params[:player_support],
      image_url: params[:image_url],
    )
  end
end
