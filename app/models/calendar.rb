class Calendar < ApplicationRecord
  has_many :bookings
  belongs_to :resource
end
