class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :made
  has_one :drink
  has_one :user
end
