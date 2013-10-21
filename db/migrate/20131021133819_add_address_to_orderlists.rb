class AddAddressToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :address, :string
  end
end
