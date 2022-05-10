class DrinksController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    
    # def index
    #     render json: Drink.all
    # end

    def index
        drink = Drink.all.with_attached_image
        render json: drink, include: ['image'], status: :ok
      end

    def create
        drink = Drink.create!(drink_params)
        render json: drink, status: :created
    end

    def destroy  
        drink = Drink.find(params[:id])
        drink.destroy
        head :no_content
    end



    private
    
    def drink_params
        params.permit(:name, :image, :price, :menu_id)
    end

    def record_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
