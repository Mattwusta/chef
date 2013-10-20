class Orderlist < ActiveRecord::Base
  attr_accessible :description, :dish1, :dish2, :dish3, :dishsum
  Orderlist.destroy_all(user_id: nil)

  belongs_to :user
  validates :user_id, presence: true
  

  
end 

