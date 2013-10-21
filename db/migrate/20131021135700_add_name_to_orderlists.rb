class AddNameToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :Name, :string
  end
end
