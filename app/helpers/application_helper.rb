module ApplicationHelper
    module SessionsHelper
        def logged_in? #three different ways to check if logged in
         #   if current_user
         #       true
         #   else
         #       false
         #   end
         #   current_user ? true : false
         !!current_user
        end
        
        def current_user
            if session[:current_user_id]
                @current_user ||= User.find(session[:current_user_id])
            end
        end
    
        def login(user)
            session[:current_user_id] = @user.id
        end
    end
end
