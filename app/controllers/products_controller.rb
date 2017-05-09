class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)

    @name = @product.name
  end

  def new

  end

  def create
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image: params[:img]
      )
    product.save
     flash[:success] = "Product Successfully Created"
     redirect_to "/products/#{ product.id }"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.assign_attributes(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      image: params[:img]
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
end