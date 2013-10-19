class Orderlist < ActiveRecord::Base
  attr_accessible :description
  Pin.destroy_all(user_id: nil)

    belongs_to :user
  validates :user_id, presence: true
end
