class AddBuildingReferenceToFlats < ActiveRecord::Migration[5.2]
  def change
    add_reference :flats, :building, foreign_key: true
  end
end
