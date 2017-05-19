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
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
    order_quantity = params[:quantity]
    order_subtotal = params[:price]
  end
end
