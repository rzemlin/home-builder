class UsersController < ApplicationController

    def new

    end

    def create
        @user = User.new
        @user.name = params[:name]
        @user.email = params[:email]
        @user.save
        redirect_to  "/login"
    end


end
