class AddTimeToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :time, :string
  end
end
