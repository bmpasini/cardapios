class RestaurantSpecialty < ActiveRecord::Base
	has_many :restaurant_categorizations
	has_many :restaurants, through: :restaurant_categorizations
end
