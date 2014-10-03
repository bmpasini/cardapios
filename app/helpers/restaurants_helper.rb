module RestaurantsHelper
	def select_session_items(session)
		@menu.items.select { |item| item.session == session }
	end
end
