class TilesController < ApplicationController
  before_action :get_params, only: [:show]
  def index
    tiles = Tile.all
    render json: tiles
  end

  def show
    tile = Tile.find(params[:id])
    
    render json: tile, include: "**"
  end

  def get_params
    params.require(:tile).permit!
  end
end
