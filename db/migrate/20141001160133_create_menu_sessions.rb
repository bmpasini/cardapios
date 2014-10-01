class CreateMenuSessions < ActiveRecord::Migration
  def change
    create_table :menu_sessions do |t|
      t.string :name

      t.timestamps
    end
  end
end
