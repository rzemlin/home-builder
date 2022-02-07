class ApplicationController < ActionController::Base
    include ApplicationHelper::SessionsHelper
    before_action :current_user
    
    def home
    
    end

    def logged_in?
        session.include? :user_id
      end

    private

    def authentication_required
        if !logged_in?
            redirect_to "/login"
        end
    end
    

end
