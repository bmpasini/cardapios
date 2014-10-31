class SortsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@specialties = RestaurantSpecialty.all
		@neighborhoods = Neighborhood.all
	end

	def show_specialty
	end

	def show_neighborhood
	end
end
