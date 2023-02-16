class CustomersController < ApplicationController
    
    before_action :authorized?
    skip_before_action :authorized?, only: [:login]


def login
    username = params[:username]
    password = params[:password]

    user = Customer.where(
        username: username, password: password
    ).first
    
    if user
        session[:user] = user.id
        
        render json: {
            message: "Successfully Logged In",
            data: user
            }, status: :ok
        
        else
            render json: {
                message: "Logged in failed"
                }, status: :unauthorized
            end
        end


        def show
            users = Customer.all
            render json: {
            customer: users
        } 
        end

    def logout
        session.delete :user
        render json: {
            message: "logout successfully"
        }
    end


private

def customer_params
    params.permit(:username, :password)
end

def authorized?
    return render json: {
    message: "failed",
    error: "You are not authorized to view this page"
    }, status: :unauthorized unless session.include? :user
end


end