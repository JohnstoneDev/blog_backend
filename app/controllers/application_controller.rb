class ApplicationController < ActionController::API
    include ActionController::Cookies

    # Rescue from  errors with a custom function
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: { message: "Connected to the API"}, status: :ok
    end


    private

    def not_found record
        render json: { error: record }, status: :not_found
    end

    def record_invalid invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
