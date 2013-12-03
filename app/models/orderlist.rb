class Orderlist < ActiveRecord::Base
  attr_accessible :description, :dish1, :gift, :re, :discount, :paylater, :detail, :reciever, :account, :wireamount, :dish2, :dish3, :dishsum, :time, :phone, :address
 

  belongs_to :user
  validates :time, presence: true
  validates :dish1, presence: true
  validates :dish2, presence: true
  validates :dish3, presence: true  
  
end 

