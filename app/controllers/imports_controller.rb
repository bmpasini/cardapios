class ImportsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @specialties = RestaurantSpecialty.all
  end

	def menu
    restaurant = Restaurant.find(params[:restaurant_id])
    if restaurant
      menu = Import.menu(params[:menu_file])
      menu.update(restaurant: restaurant)
    end
    redirect_to imports_path, notice: "Menu successfully imported."
  end

  def restaurants
    Import.restaurant(params[:restaurant_file])
    redirect_to imports_path, notice: "Restaurants successfully imported."
  end

  private
    def get_specialties(specialty_ids_arr)
      specialties = Array.new
      specialty_ids_arr.each do |s_id|
        specialties << RestaurantSpecialty.find(s_id.to_i)
      end
      specialties
    end

    def link_specialties(restaurant, specialty_ids_arr)
      specialties = get_specialties(specialty_ids_arr)
      specialties.each do |specialty|
        RestaurantCategorization.create(restaurant: restaurant, restaurant_specialty: specialty)
      end
    end
end
