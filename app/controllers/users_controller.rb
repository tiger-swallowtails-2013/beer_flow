class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path(@user.id) and return
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def signin
    @user = User.new
  end

  def authenticate
    if user_id = valid_user?(params[:user][:username], params[:user][:password])
      session[:user_id] = user_id
      redirect_to root_path
    else
      redirect_to users_signin_path
    end
  end

  private
  def valid_user?(username, password)
    @user = User.where(username: username).first
    @user.present? && @user.password == password ? @user.id : false
  end
end
