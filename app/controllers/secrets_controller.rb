class SecretsController < ApplicationController
  before_action :require_login
  def show
    # should show you the secret if you're logged in
    # current_user.present? ? (render :show) : (redirect_to 'sessions/new')
    # render "/secrets/show"
  end

  private
  def require_login
    # should redirect to login if you're not logged in
    # redirect_to :login unless session.include? :name
    redirect_to :login unless current_user.present?
  end
end