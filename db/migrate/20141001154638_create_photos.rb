class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.references :imageable, polymorphic: true
      # t.integer :imageable_id, polymorphic: true
      # t.string :imageable_type

      t.timestamps
    end
  end
end
