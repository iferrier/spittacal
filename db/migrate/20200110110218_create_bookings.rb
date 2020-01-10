class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.string :name
      t.string :anlass
      t.references :user, foreign_key: true
      t.references :calendar, foreign_key: true
      t.references :template, foreign_key: true
      t.references :booking_status, foreign_key: true

      t.timestamps
    end
  end
end
