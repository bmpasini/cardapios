class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
    	t.string :session
    	t.string :product
      t.string :product_description
      t.float :price

      t.timestamps
    end
  end
end
