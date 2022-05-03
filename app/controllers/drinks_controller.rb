class DrinksController < ApplicationController
    
    def index
        render json: Drink.all
    end

    def create
        drink = Drink.create!(drink_params)
        render json: drink, status: :created
    end



    private
    
    def drink_params
        params.permit(:name, :image, :price, :menu_id)
    end
end
