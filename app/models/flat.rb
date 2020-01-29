class Flat < ApplicationRecord
  has_many :users
  belongs_to :building
end
