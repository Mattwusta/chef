class AddWireamountToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :wireamount, :string
  end
end
