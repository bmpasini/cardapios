class Restaurant < ActiveRecord::Base
	has_one :menu
	has_many :photos, as: :imageable
	belongs_to :customer, class_name: "User"
end
