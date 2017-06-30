class ProductsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show, :random]


  def index
    # @cart_count = current_user.cart.count 

    
    @products = Product.all
    sort_attributes = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]

    if search_term
      @products = Product.where(
                                "name iLIKE ? OR description iLIKE ?", 
                                "%#{search_term}%",
                                "%#{search_term}%"
                                )
    end

    if discount
      @products = @products.where("price < ?", discount)
    end

    if sort_attributes && sort_order
      @products = Product.all.order(sort_attributes => sort_order)
    elsif sort_attributes
      @products = @products.order(sort_attributes)
    end
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def new
   @product = Product.new
  end

  def create
  

    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price]
      )
   if @product.save
     flash[:success] = "Product Successfully Created"
     redirect_to "/products/#{ product.id }"
   else
    
      render 'new.html.erb'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.assign_attributes(
      name: params[:name],
      description: params[:description],
      price: params[:price]
      )
    product.save
    flash[:success] = "Product Successfully Updated"
    redirect_to "/products/#{ product.id }"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] = "Product Successfully Deleted"
    redirect_to '/'
  end

  def random
    product = Product.all.sample
    redirect_to "/products/#{product.id}"
  end
end