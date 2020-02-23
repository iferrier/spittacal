class AddUserReferenceToTemplates < ActiveRecord::Migration[5.2]
  def change
    add_reference :templates, :user, foreign_key: true
  end
end
