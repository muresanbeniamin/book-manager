class BooksController < ApplicationController
  def index
    books = Book.all
    @want_to_read_books = books.where(status: 'Want to Read')
    @reading_books = books.where(status: 'Reading')
    @read_books = books.where(status: 'Read')
  end

  def new 
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to books_path
  end

  def book_params
    params.require(:book).permit!
  end
end