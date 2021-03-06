class ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy] 

  def index
    products = Product.all 
    render json: products 
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def create 
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    ) 
    product.save
    render json: product
  end

  def update
    product_update = Product.find_by(id: params[:id])
    product_update.name = params[:name] || product_update.name
    product_update.price = params[:price] || product_update.price
    product_update.description = params[:description] || product_update.description
    
    product_update.save
    render json: product_update
  end

  def destroy
    product_remove = Product.find_by(id: params[:id])
    product_remove.destroy
    render json: {message: "Your item was successfully removed from the catalog."}
  end

end
