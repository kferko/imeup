class Archive < ActiveRecord::Base
	belongs_to :user
	belongs_to :conversation 
	# because it has to be associated with that exact conversation it was tagged in
end
