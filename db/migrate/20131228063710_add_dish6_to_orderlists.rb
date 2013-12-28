class AddDish6ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish6, :integer
  end
end
