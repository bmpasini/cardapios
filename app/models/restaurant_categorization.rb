class RestaurantCategorization < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :restaurant_specialty
end
