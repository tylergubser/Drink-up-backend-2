class MenusController < ApplicationController

    def index  
        render json: Menu.all
    end

    def show  
        menu = Menu.find(params[:id])
        render json: menu
    end


    def create
        menu = Menu.create!(menu_params)
        render json: menu, status: :created
    end

    def update
        menu = Menu.find(params[:id])
            if menu
              menu.update(menu_params)
              render json: menu
            else
              render json: { error: "Menu not found" }, status: :not_found
            end
    end



    private

    def menu_params
        params.permit(:user_id, :active)
    end
end
