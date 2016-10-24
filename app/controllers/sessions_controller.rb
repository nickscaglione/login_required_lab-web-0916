class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    session[:name] = @user ? @user.name : nil
    reroute = session[:name] ? "/secret" : "/login"
    redirect_to reroute
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to '/login'
  end

end
