class AddOccasionToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :occasion, :string
  end
end
