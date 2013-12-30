class AddMonthToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :month, :integer
  end
end
