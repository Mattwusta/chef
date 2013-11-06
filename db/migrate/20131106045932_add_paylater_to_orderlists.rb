class AddPaylaterToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :paylater, :string
  end
end
