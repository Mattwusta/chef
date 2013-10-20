class AddDish1ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish1, :integer
  end
end
