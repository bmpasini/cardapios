class CreateRestaurantSpecialties < ActiveRecord::Migration
  def change
    create_table :restaurant_specialties do |t|
    	t.string :specialty, null: false

      t.timestamps
    end
  end
end
