class CreateFavoritedRelationships < ActiveRecord::Migration
  def change
    create_table :favorited_relationships do |t|
    	t.references :user, index: true
    	t.references :restaurant, index: true

      t.timestamps
    end
  end
end
