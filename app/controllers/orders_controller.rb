class OrdersController < ApplicationController

 

  def create
 
    order = Order.new(
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      subtotal: params[:subtotal],
                      tax: params[:tax],
                      total: params[:total]
                      )
    if order.save
      # session[:user_id] = user.id
      redirect_to "/orders/#{ order.id }"
    end
  end

  def show
    @order = Order.find(params[:id])
    order_quantity = params[:quantity]
    order_subtotal = params[:price]
  end
end
