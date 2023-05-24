class ApplicationController < ActionController::API
    include ActionController::Cookies

    def index
        render json: { message: "Rails API for my personal Blog" }
    end

end
