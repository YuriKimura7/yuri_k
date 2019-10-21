class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end
  def show
    @book = Book.find(params[:id])
    @book1 = Book.new
  end
end
