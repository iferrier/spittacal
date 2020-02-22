class Building < ApplicationRecord
  has_many :flats, dependent: :destroy
  has_many :users, through: :flats, dependent: :destroy
end
