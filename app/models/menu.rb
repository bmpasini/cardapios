class Menu < ActiveRecord::Base
	has_many :items, class_name: "MenuItem", foreign_key: :menu_id
	belongs_to :restaurant
end
