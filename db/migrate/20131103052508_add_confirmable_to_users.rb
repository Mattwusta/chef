class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :confirmable, :datetime
  end
end
