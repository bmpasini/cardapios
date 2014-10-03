class ImportsController < ApplicationController
  def index
    
  end

	def menu
    restaurant = Restaurant.find_by(name: params[:restaurant_name])
    if restaurant
      menu = Import.menu(params[:menu_file])
      menu.update(restaurant: restaurant)
    else
      raise "Restaurant does not exists on database."
    end
    redirect_to imports_path, notice: "Menu successfully imported."
  end

  def restaurants
    Import.restaurant(params[:restaurant_file])
    redirect_to imports_path, notice: "Restaurants successfully imported."
  end
end
