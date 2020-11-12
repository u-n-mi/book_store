class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path(@book)
    end
  end

  def show
    @book = Book.find(params[:id])
    @order = Order.new
  end

  def index
    @order = Order.new
    if params[:query].present?
      @books = Book.search_by_title_and_author_and_genre_and_description(params[:query])
    else
      @books = Book.all
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :description, :book_img)
  end
end

