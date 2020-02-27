class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user
  def current_user
    # returns the name of the current user
    # returns nil if nobody is logged in
    # User.find_by(id: session[:user_id])
    session[:name]
  end
end
