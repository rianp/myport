class SessionsController < ApplicationController

    def login
    end

    def create
        @user = User.find_by(username: params[:username])
        #authenticate user and user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session and redirect on success
            session[:user_id] = @user.id 
            redirect_to user_path
        else
            #error message on fail
            message = "Something went wrong! Make sure your username and password are correct."
            redirect_to login_path, notice: message
        end
    end

end    