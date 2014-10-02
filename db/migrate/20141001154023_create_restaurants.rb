class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :number
      t.string :complement
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :site
      t.references :customer, index: true

      t.timestamps
    end
  end
end
