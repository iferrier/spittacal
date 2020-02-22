class Resource < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
