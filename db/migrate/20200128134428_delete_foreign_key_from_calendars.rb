class DeleteForeignKeyFromCalendars < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :calendars, column: :building_id
  end
end
