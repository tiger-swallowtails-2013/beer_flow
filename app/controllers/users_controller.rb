class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
end