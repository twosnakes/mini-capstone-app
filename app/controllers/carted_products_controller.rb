class CartedProductsController < ApplicationController
  

  def index
   
    if current_user && current_user.cart.any?
      @carted_products = current_user.cart
    else
      flash[:warning] = "Please add something to your cart."
      redirect_to '/'
    end
  end


  def create


    carted_product = CartedProduct.new(
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      status: "carted"
                      )


  

    # p current_user.id
    
    carted_product.save
     flash[:success] = "Item added to cart"
      redirect_to "/carted_products"
  end
  

  def destroy

    carted_products = CartedProduct.find(params[:id])
    carted_products.update(status: "removed")
    flash[:success] = "Item removed from cart"
    redirect_to "/carted_products"

  end
end
