class AddRecieverToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :reciever, :string
  end
end
