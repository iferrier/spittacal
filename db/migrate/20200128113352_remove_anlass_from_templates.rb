class RemoveAnlassFromTemplates < ActiveRecord::Migration[5.2]
  def change
    remove_column :templates, :anlass
  end
end
