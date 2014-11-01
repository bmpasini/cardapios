class Import
	def self.menu(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  menu_items = Array.new
	  menu = Menu.create(status: "current")
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    item = MenuItem.create(row)
	    item.update(menu: menu)
	  end
	  menu
	end

	def self.restaurant(file)
		spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    create_restaurant(row)
	  end
	end

	private
		# the neighborhood has to be in the database already
		def self.create_restaurant(row)
	    restaurant = Restaurant.create(row)
	    neighborhood = Neighborhood.find_by(name: row[:neighborhood])
	    restaurant.update(neighborhood_model: neighborhood)
		end

		def self.open_spreadsheet(file)
		  if File.extname(file.original_filename) == ".xlsx"
		  	Roo::Excelx.new(file.path, nil, :ignore)
		  else
		  	raise "File type must be .xlsx"
		  end
		end
end
