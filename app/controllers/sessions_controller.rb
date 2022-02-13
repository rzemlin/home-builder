class SessionsController < ApplicationController

    #new route
  def new
    
  end

    #create route
  def create
    @user = User.new

    #if session already created, always redirect back to user show
    if session[:id]
      redirect_to user_path(@user)

    #if received standard login credentials (non-omniauth)
    elsif 
      @user = User.find_by(params[:username])
       if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        session[:username] = @user.username
        redirect_to user_path(@user)
       end
      end
    end
    
  def destroy
    session.clear
    redirect_to '/', :notice => "you have successfully signed out"
  end

  private


end
