class ApplicationController < ActionController::Base
  helper_method :current_user,:logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # returns true if a current user exists which signifies the login or logout status of the user
    # !! makes a method to return boolean
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "You Must be Logged in"
      redirect_to login_path
    end
  end
end
