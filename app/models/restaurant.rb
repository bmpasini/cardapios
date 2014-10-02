class Restaurant < ActiveRecord::Base
	has_one :menu
	has_many :photos, as: :imageable
	has_many :restaurant_categorizations
	has_many :restaurant_categories, through: :restaurant_categorizations
	belongs_to :customer, class_name: "User"
end
