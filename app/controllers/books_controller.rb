class BooksController < ApplicationController
  def new
      @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    @books.user = current_user
    if @books.save
      redirect_to books_path(@book)
    end
  end

  def show
    @books = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end



  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :description)
  end
end
