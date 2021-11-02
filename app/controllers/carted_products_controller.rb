class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: carted_products
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    carted_product.save
    render json: carted_product
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: "removed")
    render json: {message: "Item was successfully removed from your cart"}
  end


end
