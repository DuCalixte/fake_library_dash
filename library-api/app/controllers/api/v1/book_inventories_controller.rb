class Api::V1::BookInventoriesController < ApplicationController
  def index
    books = BookInventory.all
    render json: books, status: :ok
  end

  def show
    id = params[:id]
    render json: BookInventory.find_by_id(id), status: :ok
  end

  def update
    id = params.require(id)
    render json: {}, status: :ok
  end
end
