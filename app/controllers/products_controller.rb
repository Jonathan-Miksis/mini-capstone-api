class ProductsController < ApplicationController
  def index
    render json: {products: Product.all}
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json
  end

end
