class RemoveForeignKeyBookingStatusFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :bookings, column: :booking_status_id
  end
end
