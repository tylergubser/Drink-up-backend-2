class User < ApplicationRecord
    has_one :menu
    has_many :drinks, through: :menus

    validates :username, presence: true, uniqueness: true
end
