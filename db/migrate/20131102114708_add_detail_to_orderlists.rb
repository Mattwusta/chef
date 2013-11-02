class AddDetailToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :detail, :string
  end
end
