class OrdersController < ApplicationController

  def index
    if current_user
      order = Order.all
      render json: order
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
    if current_user
      p current_user
      order = Order.new(
        user_id: params[:user_id],
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price,
        tax: params[:tax],
        total: params[:total],
        user_id: current_user.id
      )
      # order.save
      render json: order
    else
      render json: {message: "You must be logged in to make an order."}
    end
  end

end
