class AddForeignKeyFromResourcesToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :resource, foreign_key: true
  end
end
