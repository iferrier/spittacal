class Building < ApplicationRecord
  has_many :calendars
  has_many :flats
end
