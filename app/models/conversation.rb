class Conversation < ActiveRecord::Base
	has_many :users
	has_many :user_msgs
end
