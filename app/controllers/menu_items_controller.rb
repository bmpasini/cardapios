class MenuItemsController < ApplicationController
	before_action :set_item, only: [:edit, :update, :destroy, :set_restaurant]
  before_action :set_restaurant, only: [:edit, :destroy]

  # get
  def index
    @items = MenuItem.all
  end

  # get
  def new
    @item = MenuItem.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # get
  def edit
  end

  # post
  def create
    @item = MenuItem.new(menu_item_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    menu = @restaurant.menus.select { |menu| menu.status == "current" }.first
    @item.menu = menu

    if @item.save
      redirect_to edit_restaurant_path(@restaurant), notice: 'Item was successfully created and added into current menu.'
    else
      render :new
    end
  end

  # put / patch
  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @item.update(menu_item_params)
      redirect_to edit_restaurant_path(@restaurant), notice: 'Item information was successfully updated.'
    else
      render :edit
    end
  end

  # delete
  def destroy
    @item.destroy
    redirect_to edit_restaurant_path(@restaurant), notice: 'Item was successfully deleted from the menu.'
  end

	private
    def set_item
      @item = MenuItem.find(params[:id])
    end

    def set_restaurant
      @restaurant = @item.menu.restaurant
    end

    def menu_item_params
      params.require(:menu_item).permit(:session, :name, :description, :price)
    end
end
