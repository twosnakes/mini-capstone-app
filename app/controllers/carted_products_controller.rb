class CartedProductsController < ApplicationController

  def new
    
  end

  def create


    carted_products = CartedProduct.new(
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      status: "Carted"
                      )
    
    if carted_products.save
      # session[:user_id] = user.id
      redirect_to "/carted_products"
    end
  end

  # def show
  #    @carted_product = CartedProduct.find(params[:id])
  #    user_id = current_user.id
  #    status = "Carted"
  # end

  def index
    # @carted_products = CartedProduct.all
                   @carted_products = CartedProduct.where(
                               status: "carted",
                               user_id: current_user.id
                               )
    end
                     
 

 
end
