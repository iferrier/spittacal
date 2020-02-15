class Building < ApplicationRecord
  has_many :flats
  has_many :users, through: :flats
end
