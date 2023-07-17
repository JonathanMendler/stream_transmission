class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end

  def create
    if current_user
      @game = Game.create(
        name: params[:name],
        genre: params[:genre],
        player_support: params[:player_support],
        image_url: params[:image_url],
      )
      render :show
    else
      render json: [], status: :unauthorized
    end
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

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
    render json: { message: "Game destroyed successfully" }
  end
end
