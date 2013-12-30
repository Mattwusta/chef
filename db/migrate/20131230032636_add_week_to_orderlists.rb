class AddWeekToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :week, :integer
  end
end
