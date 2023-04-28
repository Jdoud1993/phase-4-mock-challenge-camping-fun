class SignupsController < ApplicationController

    def create 
        signup = Signup.create(params.permit(:camper_id, :activity_id, :time))
        if signup.valid?
            render json: signup.activity, status: :created 
        else
            render json: { "errors": signup.errors.full_messages }, status: 422 
        end 
    end

end
