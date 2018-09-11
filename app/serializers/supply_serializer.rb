class SupplySerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category_id, :quantity, :description
  belongs_to :category
end
