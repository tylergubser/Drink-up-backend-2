class MenuSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :active
  has_many :drinks
  
end
