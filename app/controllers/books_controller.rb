class BooksController < ApplicationController

  def index
    books = Book.all
    render json: books.as_json({
      include: {:author => {}}
      })
  end

  def show
    book = Book.find(params[:id])
    render json: book
  end
end