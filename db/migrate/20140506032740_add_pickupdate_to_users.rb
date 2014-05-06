class AddPickupdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pickupdate, :string
    add_index :users, :pickupdate
  end
end
