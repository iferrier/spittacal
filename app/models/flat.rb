class Flat < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :building
end
