class ApplicationController < ActionController::Base
    include ApplicationHelper::SessionsHelper
    before_action :current_user
    
    def home
    
    end

    #gives current user assigned with the session or assigns a dummy User to avoid errors
  def current_user
    User.find_by_id(session[:user_id]) || User.new
  end

  #true or false if a session is active which indicates a user is logged in
  def logged_in?
    session.include? :user_id
  end

  #true or false if current user is an admin user
  def admin?
      current_user.admin == true
  end

end

