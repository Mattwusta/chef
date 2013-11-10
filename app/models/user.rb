class User < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: :slugged

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :confirmable, :rememberable, :trackable, :validatable

 validates :image, presence: true
 validates :address, presence: true
 validates :phone, presence: true
 has_attached_file :image, styles: { medium: "800x300>"}
  validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  size: { less_than: 2.megabytes }

  # Setup accessible (or protected) attributes for your model
  attr_accessible :image, :image_file_name, :email, :password, :password_confirmation, :remember_me, :name, :address, :phone, :intro, :dish1, :dish2, :dish3
   # attr_accessible :title, :body

  has_many :pins, :dependent => :destroy
  has_many :orderlists, :dependent => :destroy

end

