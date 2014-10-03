class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
    	t.string :status # current, outdated, plan
      t.references :restaurant, index: true
      
      t.timestamps
    end
  end
end
