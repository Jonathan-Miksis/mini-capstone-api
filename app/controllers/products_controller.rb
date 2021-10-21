class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    # render json: product.as_json(methods: [:is_discontinued?, :tax, :total])
    render json: product
  end

  def create 
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
    ) 
    if product.save
      render json: product
    else
      render json: product.errors.full_messages
    end
  end

  def update
    product_update = Product.find_by(id: params[:id])
    product_update.name = params[:name] || product_update.name
    product_update.price = params[:price] || product_update.price
    product_update.description = params[:description] || product_update.description
    
    if product_update.save
      render json: product_update
    else
      render json: product_update.errors.full_messages
    end

  end

  def destroy
    product_remove = Product.find_by(id: params[:id])
    product_remove.destroy
    render json: {message: "Your item was successfully removed from the catalog."}
  end

end
