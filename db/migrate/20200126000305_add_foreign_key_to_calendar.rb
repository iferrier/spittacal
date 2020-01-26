class AddForeignKeyToCalendar < ActiveRecord::Migration[5.2]
  def change
    add_reference :calendars, :building, foreign_key: true
  end
end
