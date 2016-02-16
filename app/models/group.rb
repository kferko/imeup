class Group < ActiveRecord::Base
	has_many :users
	has_one :group_msg
	has_many :user_groups
end
