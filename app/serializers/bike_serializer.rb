class BikeSerializer < ActiveModel::Serializer
  attributes :id, :model, :reg_number, :cc, :price, :owner_id, :image_url, :location
end
