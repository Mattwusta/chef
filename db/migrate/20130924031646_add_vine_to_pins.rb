class AddVineToPins < ActiveRecord::Migration
  def change
    add_column :pins, :vineid, :string
  end
end
