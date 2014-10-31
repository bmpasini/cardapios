module RestaurantsHelper
	def select_session_items(session)
		@menu.items.select { |item| item.session == session }
	end

	def has_specialty?(specialty_id)
		@specialties.include? RestaurantSpecialty.find(specialty_id)
	end
end
