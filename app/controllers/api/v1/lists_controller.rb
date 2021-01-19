class Api::V1::ListsController < ApplicationController
    skip_before_action :authorized

    def create
        user = User.find_by(id: user_id)
        list = List.create(list_params)
    end 

    def get_list
        user = User.find_by(id: user_id)
        list = List.find_by(id: user.id)

        render json: { list: list }
    end 

    private

    def list_params
        params.permit(:name, :user_list_id, :listitem_id)
    end 
end 