class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.string :name
      t.string :occasion

      t.timestamps
    end
  end
end
