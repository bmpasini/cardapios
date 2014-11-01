class CreateRestaurantSpecialties < ActiveRecord::Migration
  def change
    create_table :restaurant_specialties do |t|
    	t.string :specialty, null: false, uniqueness: true
    	t.string :specialty_fixed, uniqueness: true

      t.timestamps
    end
  end
end
