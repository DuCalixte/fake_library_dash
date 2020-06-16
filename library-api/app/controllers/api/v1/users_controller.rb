class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: users, status: :ok
  end

  def show
    id = params[:id]
    render json: User.find_by_id(id), status: :ok
  end
end
