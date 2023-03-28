class RiderBike < ApplicationRecord
    belongs_to :owner
    belongs_to :rider
    belongs_to :bike
end
