class Bike < ApplicationRecord

    validates :model, presence: true
    validates :price, presence: true

    belongs_to :owner
end
