class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # Handles CREATING a user
    def create
        user = User.create(user_params)
        if user.valid?
            user.username.downcase
            @token = issue_token(user)
            list = List.create(name: user.username)
            list.user_id = user.id
            user.save
            list.save
            render json: { user: UserSerializer.new(user), jwt: @token }, status: :created 
        else 
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end 
    end 

    def get_user_list
        user = User.find_by(username: params["user"])
        list = List.find_by(user_id: user.id)
        listitems = Listitem.where(user_id: user.id)
        
        render json: { user: user, list: list, listitems: listitems }
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end 
end
