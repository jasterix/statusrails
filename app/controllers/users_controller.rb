class UsersController < ApplicationController
  before_action :get_params, only: [:show]

  def index
    users = User.all

    render json: users

  end

  def show
    user = User.find(params[:id])
    render json: user
  end


  private

  def get_params
    params.permit!
  end

end
