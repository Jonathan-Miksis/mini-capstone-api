class ProductsController < ApplicationController
  def index
    render json: {products: Product.all}
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json
  end

  def create 
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
    ) 
    product.save
    render json: product.as_json
  end

end
