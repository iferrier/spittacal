class DeleteAvailibilityFromResource < ActiveRecord::Migration[5.2]
  def change
    remove_column :resources, :availibility
  end
end
