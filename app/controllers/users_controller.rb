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
end