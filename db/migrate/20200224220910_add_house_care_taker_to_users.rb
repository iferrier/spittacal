class AddHouseCareTakerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :housecaretaker, :boolean, default: false
  end
end
