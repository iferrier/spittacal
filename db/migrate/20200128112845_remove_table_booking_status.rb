class RemoveTableBookingStatus < ActiveRecord::Migration[5.2]
  def change
    drop_table :booking_statuses
  end
end
