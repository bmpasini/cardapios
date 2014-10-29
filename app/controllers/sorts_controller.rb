class SortsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		@specialties = RestaurantSpecialties.all
	end
end
