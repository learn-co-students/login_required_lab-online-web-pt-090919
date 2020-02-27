class SessionsController < ApplicationController
  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session[:name].destroy unless session[:name].nil?
  end
end
