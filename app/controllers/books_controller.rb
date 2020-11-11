class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
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
  end

  def index
    @book = Book.all
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :description, :book_img)
  end
end
