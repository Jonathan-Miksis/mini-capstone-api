class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :supplier
end
