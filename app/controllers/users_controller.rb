class UsersController < ApplicationController
  
  before_action :is_matching_login_user, only: [:edit, :update]
  
  
  def index
    @user = User.find(current_user.id)
    
    @users = User.all
    
    @post_book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    
    
    @post_book = Book.new
    
    
    @books = @user.books
    
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
  def is_matching_login_user
    user_id = params[:id].to_i
    unless user_id == current_user.id
      redirect_to user_path(current_user.id)
    end
  end
  
  
end
