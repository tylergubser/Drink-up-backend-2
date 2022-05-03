class DrinkSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :price, :image
  belongs_to :menu
  

  
  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  #  url_for(object.image, only_path: true) if object.image.attached?

 end

end
