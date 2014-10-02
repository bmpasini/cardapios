class CreateRestaurantCategorizations < ActiveRecord::Migration
  def change
    create_table :restaurant_categorizations do |t|
    	t.references :restaurant, index:true
    	t.references :restaurant_category, index:true

      t.timestamps
    end
  end
end
