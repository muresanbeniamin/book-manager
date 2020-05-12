class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new 
    @book = Book.new
  end

  def create
    Book.create(book_params)
  end

  def book_params
    params.require(:book).permit!
  end
end