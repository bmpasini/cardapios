class User < ActiveRecord::Base
	has_many :favorite_restaurants, class_name: "Restaurant", foreign_key: :customer_id
	has_many :photos, as: :imageable
	
	validates :name, presence: true
	validates :email, presence: true
  validates :password, presence: true
  validates_uniqueness_of :email
  validates_confirmation_of :password, message: "Password doesn't match"
  
  has_secure_password
end
