class UpdateAnlassToOccationinBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :anlass
  end
end
