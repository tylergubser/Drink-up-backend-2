class MenusController < ApplicationController

    def index  
        render json: Menu.all
    end

    def show  
        menu = Menu.find(params[:id])
        render json: menu.drinks
    end


    def create
        menu = Menu.create!(menu_params)
        render json: menu, status: :created
    end



    private

    def menu_params
        params.permit(:user_id)
    end
end
