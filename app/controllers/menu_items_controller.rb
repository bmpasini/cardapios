class MenuItemsController < ApplicationController
	before_action :set_item, only: [:edit, :destroy, :set_restaurant]
  before_action :set_restaurant, only: [:edit, :destroy]

  def index
    @items = MenuItem.all
  end

  def edit

  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to restaurant_path(@restaurant), notice: 'Item was successfully destroyed.'
  end

	private
    def set_item
      @item = MenuItem.find(params[:id])
    end

    def set_restaurant
      @restaurant = @item.menu.restaurant
    end

    def item_params
      params[:item]
    end  
end
