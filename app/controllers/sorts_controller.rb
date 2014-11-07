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

	def sorted_by_specialty
		@specialty = RestaurantSpecialty.find_by(specialty_fixed: params[:specialty])
		@restaurants = @specialty.restaurants
	end

	def sorted_by_neighborhood
		@neighborhood = Neighborhood.find_by(name_fixed: params[:neighborhood])
		@restaurants = @neighborhood.restaurants
	end
end
