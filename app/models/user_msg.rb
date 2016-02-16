class UserMsg < ActiveRecord::Base
	has_one :user
	has_many :conversations
end
