class SecretsController < ApplicationController
    before_action :require_logged_in

    def show
    end


    private

     def require_login
       return head(:forbidden) unless session.include? :user_id
     end

end
