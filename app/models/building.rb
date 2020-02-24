class Building < ApplicationRecord
  has_many :flats, dependent: :destroy
  has_many :users, through: :flats, dependent: :destroy
  accepts_nested_attributes_for :users
end
