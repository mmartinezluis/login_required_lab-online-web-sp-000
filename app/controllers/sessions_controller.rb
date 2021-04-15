class SessionsController < ApplicationController

  # Rails automatically loads the 'sessions/hello' view without a 'hello' mehotd in this controller

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'                                       # The 'login' route corresponds to the '/' route, that is, the root route. This is EXTREMELY tricky, the login route for the tests on this lab IS NOT '/login' BUT '/'
    else
      session[:name] = params[:name]
      redirect_to '/hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'                       # This is the login route
  end

end