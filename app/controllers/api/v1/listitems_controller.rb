class Api::V1::ListitemsController < ApplicationController

    def create 
        user = User.find_by(id: user_id)
        list = List.find_by(user_id: user.id)

        listitem = Listitem.create(list_params)
        listitem.list_id = list.id 
        listitem.user_id = user.id
        listitem.save
    end 

    def show
        # user = User.find_by(id: user_id)
        # listitem = Listitem.find_by(id: )
        if params[:id]
            item = Listitem.find_by(id: params[:id])
            render json: {listitem: item}
        end 
    end

    def destroy
        if params[:id]
            item = Listitem.find_by(id: params[:id])
            if item.destroy
                render json: {
                    message: "List item was deleted successfully"
                }
            end
        end
    end

    private

    def list_params
        params.require(:list).permit(:description, :url)
    end
end 