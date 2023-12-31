class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new,:create]
  def new

  end

  def create
    user = User.find_by(name: params[:sessions][:name])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      flash[:success] = "you have successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = "there is something wrong"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "you have successfully logged out"
    redirect_to login_path
  end

  private
  def logged_in_redirect
    if logged_in?
      flash[:error] = "you are already logged in"
      redirect_to root_path
    end
  end
end
