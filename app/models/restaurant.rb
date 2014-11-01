class Restaurant < ActiveRecord::Base
	has_many :menus
	has_many :restaurant_categorizations
	has_many :restaurant_specialties, through: :restaurant_categorizations
	has_many :photos, as: :imageable
	has_many :favorited_relationships
	has_many :preferred_customers, through: :favorited_relationships, source: :user
	belongs_to :neighborhood_model
end
