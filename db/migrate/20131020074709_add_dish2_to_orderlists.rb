class AddDish2ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish2, :integer
  end
end
