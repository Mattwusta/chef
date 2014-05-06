class AddPickupdatesToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :pickupdates, :string
    add_index :orderlists, :pickupdates
  end
end
