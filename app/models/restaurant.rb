class Restaurant < ActiveRecord::Base
	has_one :menu
	has_many :photos, as: :imageable
	has_many :restaurant_categorizations
	has_many :restaurant_categories, through: :restaurant_categorizations
	has_many :favorited_relationships
	has_many :preferred_customers, through: :favorited_relationships, source: :user

	def sessions
		self.menus
	end

	def items_from_session

	end
end
