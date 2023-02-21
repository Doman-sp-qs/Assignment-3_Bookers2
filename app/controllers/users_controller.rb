class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    
    
    @book = Book.new
    
    
    @books = @user.books
    
  end
  
  def create
    
    
  end

  def edit
    
  end

  def index
    
  end
  
end
