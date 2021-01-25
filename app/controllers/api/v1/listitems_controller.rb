class Api::V1::ListitemsController < ApplicationController

    def create 
        user = User.find_by(id: user_id)
        list = List.find_by(user_id: user.id)
        
        listitem = Listitem.create(list_params)
        listitem.list_id = list.id 
        listitem.user_id = user.id
        listitem.save
    end 

    private

    def list_params
        params.require(:list).permit(:description, :url)
    end
end 