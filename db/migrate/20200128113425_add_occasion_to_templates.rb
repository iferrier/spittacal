class AddOccasionToTemplates < ActiveRecord::Migration[5.2]
  def change
    add_column :templates, :occasion, :string
  end
end
