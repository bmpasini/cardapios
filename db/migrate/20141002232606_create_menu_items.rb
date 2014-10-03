class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
    	t.string :session
    	t.string :name
      t.string :description
      t.float :price
      t.references :menu, index: true

      t.timestamps
    end
  end
end
