class RemoveReferencesBookingStatusFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :booking_status
  end
end
