class CreateRestaurantCategories < ActiveRecord::Migration
  def change
    create_table :restaurant_categories do |t|
    	t.string :category, null: false

      t.timestamps
    end
  end
end
