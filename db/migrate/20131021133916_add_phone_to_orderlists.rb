class AddPhoneToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :phone, :string
  end
end
