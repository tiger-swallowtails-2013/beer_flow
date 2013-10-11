class SessionsController < ApplicationController
  def create
    if UsersController.valid_user?(params)
      session[:user_id] = params[:id].to_i
      redirect_to root_path
    else
      flash[:error] = "Please try again"
      redirect_to users_signin_path
    end
  end
end
