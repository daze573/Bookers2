class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @books = Book.all
    @book = Book.new
    @book.user_id = current_user.id
    @user = current_user.id
  end

  def show
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def book_params
    params.require(:book).permit(:image, :title, :body)
  end
end
