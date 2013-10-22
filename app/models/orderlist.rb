class Orderlist < ActiveRecord::Base
  attr_accessible :description, :dish1, :re, :account, :wireamount, :dish2, :dish3, :dishsum, :time, :phone, :address
  Orderlist.destroy_all(user_id: nil)

  belongs_to :user
  validates :user_id, presence: true
  validates :time, presence: true
  
  
end 

