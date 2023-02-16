class AppCookiesController < ApplicationController

def create
    data = params[:data]
    # set cookie info
    cookies[:info] = data
    render json: {
        message: " Cookie has been created!"
    }
end


def create_other
    data = params[:data]
    # set cookie info
    cookies[:other_info] = data
    render json: {
        message: " Other cookie has been created!"
    }
end


def show
    render json: {
    app_cookies: cookies
}
end

end
