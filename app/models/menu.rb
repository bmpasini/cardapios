class Menu < ActiveRecord::Base
	belongs_to :restaurant

	def self.import(file)
		menu_items = Array.new
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    menu_items << create(row)
	  end
	  menu_items
	end

	def self.open_spreadsheet(file)
	  if File.extname(file.original_filename) == ".xlsx"
	  	Roo::Excelx.new(file.path, nil, :ignore)
	  else
	  	raise "File type must be .xlsx"
	  end
	end
end
