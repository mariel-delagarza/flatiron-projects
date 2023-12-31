class UsersController < ApplicationController

  def index 
  end 

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id]=@user.id
      user_path(@user)
    else 
      @user.errors.full_messages
    end
  end

  def show
  end

  def edit 
  end

  def update 
  end

  def destroy 
  end

  private 

  def user_params
    params.require(:user), permit(:username, :email, :password)
  end

end
