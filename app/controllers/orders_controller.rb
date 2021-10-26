class OrdersController < ApplicationController

  def create
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:params],
      tax: params[:tax],
      total: params[:total]
    )
    order.save
    render json: order
  end

end
