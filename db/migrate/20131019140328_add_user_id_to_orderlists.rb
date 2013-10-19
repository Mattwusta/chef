class AddUserIdToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :user_id, :integer
    add_index :orderlists, :user_id
  end
end
