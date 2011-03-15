class BooksController < ApplicationController
  def index
    @books = Book.order("name")
  end

  def create
    Book.create! params[:book]
    redirect_to books_path
  end
end
