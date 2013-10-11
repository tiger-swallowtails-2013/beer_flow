class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:session][:username])
    if @user && @user.check_if_password_valid(params[:session][:password])
      session[:id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    reset_session
  end
end