class AddAccountToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :account, :string
  end
end
