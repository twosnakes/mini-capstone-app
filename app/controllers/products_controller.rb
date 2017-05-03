class ProductsController < ApplicationController
  def all_products 
    @products = Product.all
    render 'photographs.html.erb'
  end
end