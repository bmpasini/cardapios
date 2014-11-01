class SortsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@specialties = RestaurantSpecialty.all
		@neighborhoods = Neighborhood.all
	end

	def show_specialty
		@specialty = RestaurantSpecialty.find(params[:id])
		@restaurants = @specialty.restaurants
	end

	def show_neighborhood
		@neighborhood = Neighborhood.find(params[:id])
		@restaurants = @neighborhood.restaurants
	end
end
