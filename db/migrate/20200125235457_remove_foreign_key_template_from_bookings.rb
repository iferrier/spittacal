class RemoveForeignKeyTemplateFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :bookings, :templates
  end
end
