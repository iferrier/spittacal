class Calendar < ApplicationRecord
  has_many :bookings
  belongs_to :resource

  private

  def date_range
    beginning = start_date.beginning_of_week + 1.day
    ending    = start_date.end_of_week - 1.day
    (beginning..ending).to_a
  end
end
