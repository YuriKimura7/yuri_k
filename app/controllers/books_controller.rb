class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def show
    @book = find_book_by_id
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  def edit
    @book = find_book_by_id
  end
  def update
    @book = find_book_by_id
    @book.update(book_params)
    redirect_to book_path
  end

  private
  def find_book_by_id
    Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :price, :page)
  end
end
