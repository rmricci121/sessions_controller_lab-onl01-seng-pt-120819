class SessionsController < ApplicationController
  def new
    session[:name] = params[:name]

    
  end

  def create
     session[:name] = params[:name]
    
     if session[:name] == nil || session[:name] == ""
      redirect_to "/login"
     else
      redirect_to "/"
     end
  end

  def destroy
    session.delete :name
  end

end
