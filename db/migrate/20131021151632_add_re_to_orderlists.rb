class AddReToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :re, :text
  end
end
