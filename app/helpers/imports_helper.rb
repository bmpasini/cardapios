module ImportsHelper
	def restaurant_options
		select_options = @restaurants.collect{ |r| [r.name_fixed, r.id] }
	  options_for_select(select_options)
	end
end
