class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    if @user.valid?
      @user.save
      redirect_to user_path(@user.id)
    else
      redirect_to users_signin_path
    end
  end
# YOU GUYS ARE FUCKED

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def signin
    @user = User.new
  end

  def self.authenticate(params)
    if valid_user?(params[:user][:username], params[:user][:password])
      User.where(username: username).first
    else
      User.create(username: params[:user][:username], password: params[:user][:password] )
    end
  end

   private
  def self.valid_user?(params)
    username = params[:username]
    password = params[:password]
    @user = User.where(username: username).first
    @user.present? && @user.password == password
    # return true
  end
end
