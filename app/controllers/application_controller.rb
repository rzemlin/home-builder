class ApplicationController < ActionController::Base
before_action :current_user
    def home
    
    end

    def current_user
        if session[:current_user_id]
            @current_user = User.find(session[:current_user_id])
        end
    end



    def logged_in?
        session.include? :user_id
      end

end
