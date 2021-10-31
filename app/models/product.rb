class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  
  # validates :name, presence: { message: "You must have a name for the product"}
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { maximum: 500 }
  # validates :name, uniqueness: true

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end


  def is_discontinued?
    if price < 10
      return true
    else 
      return false 
    end
  end

  def tax
    tax = price * 0.09
    p tax
  end

  def total
    total = price + tax 
    p total
  end

end
