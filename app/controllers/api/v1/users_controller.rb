class Api::V1::UsersController < ApplicationController
    
    def create
        # Handles signing user up
        user = User.create(user_params)
        if user.valid?
            @token = issue_token(user)
            render json: { user: UserSerializer.new(user), jwt: @token }, status: :created 
        else 
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end 
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end 
end
