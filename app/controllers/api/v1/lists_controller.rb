class Api::V1::ListsController < ApplicationController
    skip_before_action :authorized

    def create
        list = List.create(params)
    end 

    def get_list
        user = User.find_by(id: user_id)
        list = List.find_by(user_id: user.id)
        listitems = Listitem.where(user_id: user.id)

        render json: { list: list, listitems: listitems }
    end 
end 