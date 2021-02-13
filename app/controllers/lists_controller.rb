class ListsController < ApplicationController
    def index 
        render json: ListSerializer.new(List.all)
    end 
    
    # def show 
    #     list = List.find(params[:id])
    #     render json: ListSerializer.new(list)
    # end 

    def create 
        list = List.create(list_params)
        render json: ListSerializer.new(list)
    end

    def update 
        list = List.find_by(id: params[:id])
        list.update(list_params)
        render json: ListSerializer.new(list)
    end 

    def destroy 
        list = List.find_by(id: params[:id])
        list.destroy 
        render json: {message: "success"}
    end 

    private 

    def list_params 
        params.require(:list).permit(:name)
    end 

end
