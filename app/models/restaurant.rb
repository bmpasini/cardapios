class Restaurant < ActiveRecord::Base
	has_one :menu
	has_many :photos, as: :imageable
	has_many :restaurant_categorizations
	has_many :restaurant_categories, through: :restaurant_categorizations
	belongs_to :customer, class_name: "User"

	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    create(row)
	  end
	end

	def self.open_spreadsheet(file)
	  if File.extname(file.original_filename) == ".xlsx"
	  	Roo::Excelx.new(file.path, nil, :ignore)
	  else
	  	raise "File type must be .xlsx"
	  end
	end
end
