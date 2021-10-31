class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.where(user_id: current_user.id)
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: false,
      status: "carted"
    )
    carted_product.save
    render json: carted_product
  end

end
