class Rider < ApplicationRecord
    has_secure_password

    validates :full_name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, length: { minimum: 6 }
    validates :phone_number, length: { is: 12 }

    has_many :rider_bikes
    has_many :owners, through: :rider_bikes
    has_many :bikes, through: :rider_bikes
end
