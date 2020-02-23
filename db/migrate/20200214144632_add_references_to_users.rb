class AddReferencesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :building, foreign_key: true
    #comment
  end
end
