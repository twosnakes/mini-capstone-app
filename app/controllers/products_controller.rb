class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
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
  end
end