class UsersController < ApplicationController

  # GET: /users/new
  get "/signup" do
    if logged_in?
      redirect to "/pets"
    else
      erb :"/users/new"
    end
  end

  post "/signup" do
    if logged_in?
        redirect to "/pets"
    elsif params[:username] == "" || params[:password] == ""
      redirect to "/signup"
    else
      @user = User.create(username: params[:username], email: params[:email], password: params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to "/pets"
    end
  end

  get "/login" do
    if logged_in?
      erb :"/pets"
    else
      erb :"/users/login"
    end
  end

  post "/login" do
    @user = User.find_by(:username => params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to "/pets"
    else
      redirect to "/login"
    end
  end

  get "/logout" do
    if logged_in?
      session.clear
      redirect to "/login"
    else
      redirect to '/'
    end
  end
end
