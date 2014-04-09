class Category < ActiveRecord::Base

	attr_accessible :description, :image 
 
has_attached_file :image, styles: { large: "1400x300>"}
  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  attr_accessible :name
  has_many :pins
end
