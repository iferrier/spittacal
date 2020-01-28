class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :calendar
  belongs_to :template
end
