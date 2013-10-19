class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.string :description

      t.timestamps
    end
  end
end
