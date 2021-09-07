class ApplicationController < ActionController::Base

    def authenticate_user!
        redirect_to_new_session_path unless helpers.logged_in?
    end
end
