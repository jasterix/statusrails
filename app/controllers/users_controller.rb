class UsersController < ApplicationController
  before_action :get_params, only: [:show]

  def index
    @users = User.all

    render json: UserSerializer.new(User.all)
    # render json: UserSerializer.new(User.all)
  end

  def show
    render json: UserSerializer.new(User.find(params[:id]))
  end


  private

  def get_params
    params.permit!
  end

end
