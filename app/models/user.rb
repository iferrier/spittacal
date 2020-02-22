class User < ApplicationRecord
  belongs_to :flat
  belongs_to :building
  has_many :templates, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
