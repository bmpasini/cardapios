class Neighborhood < ActiveRecord::Base
	has_many :restaurants, foreign_key: :neighborhood_model_id
end
