class Api::V1::BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, status: :ok
  end

  def show
    id = params[:id]
    render json: Book.find_by_id(id), status: :ok
  end
end
