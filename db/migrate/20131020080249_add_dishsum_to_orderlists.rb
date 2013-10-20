class AddDishsumToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dishsum, :integer
  end
end
