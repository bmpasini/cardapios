class User < ActiveRecord::Base
	has_many :photos, as: :imageable
	has_many :favorited_relationships
	has_many :favorite_restaurants, through: :favorited_relationships, source: :restaurant
	
	validates :name, presence: true
	validates :email, presence: true
  validates :password, presence: true
  validates_uniqueness_of :email
  validates_confirmation_of :password, message: "Password doesn't match"
  
  has_secure_password
end
