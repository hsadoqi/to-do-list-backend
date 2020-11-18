class ListsController < ApplicationController
    def index 
        render json: ListSerializer.new(List.all)
    end 

    def create 
        list = List.create(list_params)
        render json: ListSerializer.new(list)
    end

    private 

    def list_params 
        params.require(:list).permit(:name)
    end 

end
