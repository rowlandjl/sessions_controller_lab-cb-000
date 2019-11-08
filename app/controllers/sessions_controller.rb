class SessionsController < ApplicationController
  
  def new 
  end 
  
  def create 
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name]
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end 
  
  def destroy 
    session.delete :name 
    redirect_to controller: 'application', action: 'hello'
  end 
  
end 