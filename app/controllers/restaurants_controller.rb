class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :edit_specialties]

  def edit_specialties
    @restaurant_categorization = RestaurantCategorization.find_by(restaurant_id = @restaurant.id)
  end

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @menu = @restaurant.menus.select { |menu| menu.status == "current" }.first
    @menu_sessions = Array.new
    @menu.items.each do |item|
      @menu_sessions << item.session unless @menu_sessions.include? item.session
    end
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
    @menu = @restaurant.menus.select { |menu| menu.status == "current" }.first
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)  
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :street, :number, :complement, :email, :phone, :site)
    end
end
