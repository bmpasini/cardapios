class SortsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@specialties = RestaurantSpecialties.all
		@neighborhoods = Neighborhood.all
	end

	def show_specialty
	end

	def show_neighborhood
	end
end
