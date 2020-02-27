class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    if params[:name].empty?
      session[:name].nil
    else
      session[:name] = params[:name]
    end
  end
  
  def logged_in?
    session[:name] = params[:name]
    redirect_to "/"
  end
end


