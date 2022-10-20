class ApplicationController < ActionController::Base
    def isLoggedIn
        !!session[:user_id]
    end

    def currentUser
        @currentUser  ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    end
end
