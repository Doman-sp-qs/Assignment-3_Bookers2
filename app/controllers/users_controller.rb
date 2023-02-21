class UsersController < ApplicationController
  
  def index
    @user = User.find(current_user.id)
    
    @users = User.all
    
    @post_book = Book.new
  end
  
  def create
    
    
  end
  
  def show
    @user = User.find(params[:id])
    
    
    @post_book = Book.new
    
    
    @books = @user.books
    
  end
  
  def edit
    
  end
  
  
  
end
