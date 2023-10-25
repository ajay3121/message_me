module ApplicationHelper
  # this methods are accessed from the views of the app.and used to perform certain operations to control the views in the app.
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # returns true if a current user exists which signifies the login or logout status of the user
    # !! makes a method to return boolean
    !!current_user
  end
end
