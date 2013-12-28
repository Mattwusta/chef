class AddDish4ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish4, :integer
  end
end
