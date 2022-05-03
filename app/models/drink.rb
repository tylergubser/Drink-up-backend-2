class Drink < ApplicationRecord
  belongs_to :menu, dependent: :destroy
  has_one_attached :image, dependent: :destroy
end
