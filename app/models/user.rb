class User < ApplicationRecord
  belongs_to :flat
  has_many :templates
  has_many :bookings
end
