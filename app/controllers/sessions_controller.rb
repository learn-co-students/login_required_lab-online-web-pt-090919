class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      # sets session[:name] if :name was given
      session[:name] = params[:name]
      redirect_to :root
    else
      # redirects to the login page if :name is nil
      # redirects to login page if :name is empty
      redirect_to :login #'/login'
    end
  end

  def destroy
    session.delete :name if current_user.present?
    redirect_to :login
  end
end
