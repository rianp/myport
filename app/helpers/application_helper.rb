module ApplicationHelper
    #Is user logged in?
    def logged_in?
        !!session[:user_id]
    end

    #If user is logged in, return database model for this user.
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    end
end
