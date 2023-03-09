class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :profile_image, :introduction)
  end

end
