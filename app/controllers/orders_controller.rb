class OrdersController < ApplicationController

  def index
    if current_user
      order = Order.all
      if order.user_id ==     current_user.id
        render json: order
      else
        render json: {message: "Sorry, no orders found."}
      end
    else
      render json: {message: "You must be logged in to see the catalog."}
    end

  end

  def show
    if current_user
      order = Order.find_by(id: params[:id])
      if order.user_id == current_user.id
        render json: order
      else
        render json: {message: "Sorry, no orders found."}
      end
    else
      render json: {message: "You must be logged in to see the catalog."}
    end

  end

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity] * product.price
    calculated_tax = calculated_subtotal * 0.07
    calculated_total = calculated_tax + calculated_subtotal
    if current_user
      p current_user
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
    else
      render json: {message: "You must be logged in to make an order."}
    end
  end

end
