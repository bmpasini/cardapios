class Fix
	def self.str(string)
		string.downcase!
    string.gsub!(/[àáâã]/, 'a')
    string.gsub!(/[èéê]/, 'e')
    string.gsub!(/[îíì]/, 'i')
    string.gsub!(/[ôòóõ]/, 'o')
    string.gsub!(/[ûüùú]/, 'u')
    string.gsub!(/[ç]/, 'c')
    string.gsub!(' ', '-')
    string
  end

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
end