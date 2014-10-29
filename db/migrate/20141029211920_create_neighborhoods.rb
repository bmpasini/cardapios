class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :neighborhood, null: false, uniqueness: true

      t.timestamps
    end
  end
end
