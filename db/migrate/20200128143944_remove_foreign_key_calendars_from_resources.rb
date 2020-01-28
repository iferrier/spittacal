class RemoveForeignKeyCalendarsFromResources < ActiveRecord::Migration[5.2]
  def change
    remove_reference :resources, :calendar
  end
end
