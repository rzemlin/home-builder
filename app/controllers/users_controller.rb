class UsersController < ApplicationController

    #GET request for new user action
    def new 
        
    end
    
    #POST request to create a new user
    def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password_digest = params[:password]
    @user.save
    redirect_to '/login'
    end

  end
    
