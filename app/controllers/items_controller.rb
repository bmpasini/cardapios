class ItemsController < ApplicationController
	before_action :set_item, only: [:edit]
  def index
    @items = Item.all
  end

  def edit
  end

	private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params[:item]
    end  
end
