class AppSessionsController < ApplicationController
    
    def create
        uid = params[:uid].to_i
        session[:user_id] = uid
        render json: {
            message: 'Created session Successfully'
        }
    end



    def create_other
        username = params[:username]
        session[:username] = username
        render json: {
            message: 'Created other session Successfully'
        }
    end
    
    
    def show
        render json: {
            app_sessions: session
        }
    end



end
