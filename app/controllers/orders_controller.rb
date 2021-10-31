class OrdersController < ApplicationController
  before_action :authenticate_user, only: [:show, :index, :create]

  def index
    order = Order.where(user_id: current_user.id)
    render json: order

  end

  def show
    order = Order.find_by(id: params[:id], user_id: current_user.id)
    render json: order
  end

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    item_price = 0
    carted_products.each do |item|
      item_price += item.product.price
    end
    tax = item_price * 0.07
    total = item_price + tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: item_price,
      tax: tax,
      total: total
      )
      # order.save
    render json: order
  end

end
