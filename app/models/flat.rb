class Flat < ApplicationRecord
  has_many :users, dependent: :destroy
  belongs_to :building
  accepts_nested_attributes_for :users
end
