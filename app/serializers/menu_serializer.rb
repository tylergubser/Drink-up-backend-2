class MenuSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :drinks
  
end
