class RiderSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :phone_number, :email, :licence_number, :date_of_birth, :spouse_contact, :id_number
end
