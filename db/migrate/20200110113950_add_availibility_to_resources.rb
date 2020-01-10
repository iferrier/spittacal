class AddAvailibilityToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :availibility, :boolean
  end
end
