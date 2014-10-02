class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false 
      t.string :email, null: false 
      t.string :password, null: false 
      t.string :photo
      t.boolean :is_admin?

      t.timestamps
    end
  end
end
