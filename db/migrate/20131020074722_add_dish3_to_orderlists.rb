class AddDish3ToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :dish3, :integer
  end
end
