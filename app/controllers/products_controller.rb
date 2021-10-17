class ProductsController < ApplicationController
  def index
    render json: {products: Product.all}
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json
  end

  # def create 
  #   product = Product.new(
  #     name: params[:input_name],
  #     price: params[:input_price],
  #     description: params[:input_description],
  #   ) 
  #   product.save
  #   render json: product.as_json
  # end

  def update
    product_update = Product.find_by(id: params[:id])
    product_update.name = params[:input_name] || product_update.name
    product_update.price = params[:input_price] || product_update.price
    product_update.description = params[:input_description] || product_update.description
    product_update.save
    render json: product_update.as_json
  end

end
