class BooksController < ApplicationController
  before_filter do
    render :login unless @identity
  end

  def index
    @books = @identity.books.order("name")
  end

  def create
    @identitiy.books.create! params[:book]
    redirect_to books_path
  end
end
