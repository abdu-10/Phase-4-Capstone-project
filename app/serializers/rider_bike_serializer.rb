class RiderBikeSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :rider
  belongs_to :owner
  belongs_to :bike
end
