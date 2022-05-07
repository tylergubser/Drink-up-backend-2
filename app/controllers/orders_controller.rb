class OrdersController < ApplicationController

    def index
        render json: Order.all
    end

    def create 
        order = Order.create!(order_params)
        render json: order, status: :created
    end

    def destroy  
        order = Order.find(params[:id])
        order.destroy
        # order = Order.all 
        # order.destroy_all
    end



    private

    def order_params
        params.permit(:name, :phone_number, :drink_id, :user_id)
    end

end
