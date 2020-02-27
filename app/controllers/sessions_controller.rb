class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name].blank?
            redirect_to new_session_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.destroy
    end

end
