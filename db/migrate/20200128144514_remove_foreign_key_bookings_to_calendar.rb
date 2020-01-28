class RemoveForeignKeyBookingsToCalendar < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :calendar
  end
end
