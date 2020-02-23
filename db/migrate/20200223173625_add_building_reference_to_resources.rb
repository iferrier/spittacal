class AddBuildingReferenceToResources < ActiveRecord::Migration[5.2]
  def change
    add_reference :resources, :building, foreign_key: true
  end
end
