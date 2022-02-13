class UsersController < ApplicationController

    def new 
        if session[:current_user_id]
          redirect_to "/", :notice => "Already logged in!"
        end
    end
    
      # POST /users - Create the User Action
    def create
        @user = User.new
        @user.name = params[:name]
        @user.email = params[:email]
        @user.password_digest = params[:password]
        @user.save
        redirect_to "/show"
    
    end
    
    def show

    end

    def index

    end

    def destroy

    end
    
end
