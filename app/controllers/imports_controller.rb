class ImportsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

	def menu
    restaurant = Restaurant.find(params[:restaurant_id])
    if restaurant
      menu = Import.menu(params[:menu_file])
      menu.update(restaurant: restaurant)
    # else
    #   raise "Restaurant does not exist on database."
    end
    redirect_to imports_path, notice: "Menu successfully imported."
  end

  def restaurants
    Import.restaurant(params[:restaurant_file])
    redirect_to imports_path, notice: "Restaurants successfully imported."
  end
end
