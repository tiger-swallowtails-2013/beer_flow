class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:session][:username])
    if @user && @user.check_if_password_valid(params[:session][:password])
      log_in(@user)
      redirect_to user_path(@user)
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end