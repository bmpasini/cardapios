class Fix
	def self.restaurant_name(restaurant)
  	i = 1
  	exists_already = true
  	name_fixed = str(restaurant.name)
  	while exists_already
  		exists_already = Restaurant.find_by(name_fixed: name_fixed)
			if exists_already == nil
	  		restaurant.update(name_fixed: name_fixed)
	  	else
	  		if i == 1
	  			name_fixed += '-1'
	  		else
	  			name_fixed.chomp!((i-1).to_s)
	  			name_fixed += i.to_s
	  		end
	  		i += 1
	  	end
		end
  end

  def self.specialty(specialty)
    specialty_fixed = str(specialty.specialty)
    specialty.update(specialty_fixed: specialty_fixed)
  end

  def self.neighborhood(neighborhood)
    neighborhood_fixed = str(neighborhood.name)
    neighborhood.update(name_fixed: neighborhood_fixed)
  end

  private
    def self.str(string)
      string.downcase!
      string.gsub!(/[ÀàÁáÂâÃã]/, 'a')
      string.gsub!(/[ÈèÉéÊê]/, 'e')
      string.gsub!(/[ÎîÍíÌì]/, 'i')
      string.gsub!(/[ÔôÒòÓóÕõ]/, 'o')
      string.gsub!(/[ÛûÜüÙùÚú]/, 'u')
      string.gsub!(/[Çç]/, 'c')
      string.gsub!(' ', '-')
      string.gsub!('/ ', '')
      string
    end
end