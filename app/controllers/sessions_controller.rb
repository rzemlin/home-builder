class SessionsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by (:email => params[:email])
        if @user
            raise "login".inspect
        else
            redirect_to "/login" :message => "couldn't find the user"
        end
        

    end

end
