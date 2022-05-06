class Order < ApplicationRecord
  belongs_to :drink
  belongs_to :user

  validates :phone_number, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
