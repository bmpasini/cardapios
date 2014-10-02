class User < ActiveRecord::Base
	has_many :favorite_restaurants, class_name: "Restaurant", foreign_key: :customer_id
	has_many :photos, as: :imageable
end
