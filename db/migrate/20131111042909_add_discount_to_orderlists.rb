class AddDiscountToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :discount, :string
  end
end
