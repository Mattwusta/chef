class AddPickuplocationToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :pickuplocation, :string
    add_index :orderlists, :pickuplocation
  end
end
