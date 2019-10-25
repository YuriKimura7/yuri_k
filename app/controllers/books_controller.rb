class BooksController < ApplicationController
  def index
    @books = Book.all
    @books = @books.where(name: params[:search_name]) if params[:search_name].present?
    @books = @books.where(price: params[:search_price]) if params[:search_price].present?
    @books = @books.where(page: params[:search_page]) if params[:search_page].present?
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render action: :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path
    else
      render action: :edit
    end
  end

  private
  def book_params
    params.require(:book).permit(:name, :price, :page)
  end
end
