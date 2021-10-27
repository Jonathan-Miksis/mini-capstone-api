class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    order = Order.where(user_id: current_user.id)
    render json: order

  end

  def show
    order = Order.find_by(id: params[:id], user_id: current_user.id)
    render json: order
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity] * product.price
    calculated_tax = calculated_subtotal * 0.07
    calculated_total = calculated_tax + calculated_subtotal

    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      )
      # order.save
      render json: order
  end

end
