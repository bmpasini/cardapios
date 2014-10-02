class ImportsController < ApplicationController
  def index

  end

	def menu
    restaurant = Restaurant.find_by(name: params[:restaurant_name])
    if restaurant
      menu_items = Menu.import(params[:menu_file])
      menu_items.each { |item| item.update(restaurant_id: restaurant.id) }
    else
      raise "Restaurant does not exists on database."
    end
    redirect_to imports_path, notice: "Menu successfully imported."
  end

  def restaurants
    Restaurant.import(params[:restaurant_file])
    redirect_to imports_path, notice: "Restaurants successfully imported."
  end
end
