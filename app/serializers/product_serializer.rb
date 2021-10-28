class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :is_discontinued?, :tax, :total

  has_many :images
  belongs_to :supplier
end
