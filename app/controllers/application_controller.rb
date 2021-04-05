class ApplicationController < ActionController::Base
    helper_method :current_driver


    def home 
    end

    #set this to admin 
    def show_time

    end

    #check to see if logged in 
    def authorized
        redirect_to '/signin' unless current_driver
    end

    #set up current driver 
    def current_driver 
        @current_driver ||= Driver.find(session[:driver_id]) if session[:driver_id]

    end

   

end
