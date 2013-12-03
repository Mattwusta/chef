class AddGiftToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :gift, :string
  end
end
