class SessionsController < ApplicationController
  # def show
  # end
  
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end


end