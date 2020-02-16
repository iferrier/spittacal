class User < ApplicationRecord
  belongs_to :flat
  belongs_to :building, dependent: :destroy
  has_many :templates
  has_many :bookings
end
