class DrinksController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    
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

    def record_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
