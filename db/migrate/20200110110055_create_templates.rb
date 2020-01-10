class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :name
      t.string :anlass
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
