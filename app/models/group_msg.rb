class GroupMsg < ActiveRecord::Base
	has_one :user
	has_many :groups
end
