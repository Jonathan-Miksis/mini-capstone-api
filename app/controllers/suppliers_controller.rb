class SuppliersController < ApplicationController

  def index
    supplier = Supplier.all
    render json: supplier.as_json
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end


end
