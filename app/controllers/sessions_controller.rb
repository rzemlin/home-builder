class SessionsController < ApplicationController

    #new route
  def new
    
  end

    #create route
    def create
      @user = User.find_by(user: params[:email])
        if @user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(@user)
          else
            redirect_to login_path, notice: "Incorrect Username or Password"
        end
      end

  
    
  def destroy
    session.clear
    redirect_to '/', :notice => "you have successfully signed out"
  end

end
