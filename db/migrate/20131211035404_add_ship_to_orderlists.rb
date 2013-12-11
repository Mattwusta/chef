class AddShipToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :ship, :string
  end
end
