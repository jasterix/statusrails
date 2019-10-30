class BoardsController < ApplicationController
  before_action :get_params, only: [:show]
  skip_before_action :verify_authenticity_token

  def index
    boards = Board.all
    render json: boards

  end

  def show
    board = Board.find(params[:id])
    render json: board
  end

  def update
    board = Board.find(get_params[:id])
    board.update(likes: get_params[:likes])
    render json: board
  end

  def create
    board = Board.create(name: get_params[:name], urls: get_params[:urls])
    render json: board, status: :ok
    end


  private

  def get_params
    params.permit!
  end
end
