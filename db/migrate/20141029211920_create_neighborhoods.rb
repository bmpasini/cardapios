class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name, null: false, uniqueness: true

      t.timestamps
    end
  end
end
