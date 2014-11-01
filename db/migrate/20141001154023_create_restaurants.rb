class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :name_fixed, uniqueness: true
      t.string :street
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :CEP
      t.string :region
      t.string :public_email
      t.string :contact_email
      t.string :phone
      t.string :site
      t.references :customer, index: true
      t.references :neighborhood_model, index: true

      t.timestamps
    end
  end
end
