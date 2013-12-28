class AddDish5ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish5, :integer
  end
end
