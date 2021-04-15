class SecretsController < ApplicationController
  before_action :require_login  
  def show
  end

  private
  def require_login
    redirect_to '/' unless session.include? :name                   # '/' is the login route for the tests in this lab; the login route iS NOT '/login'
  end
end