class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :manager
  
end
