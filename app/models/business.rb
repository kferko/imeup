class Business < ActiveRecord::Base
	has_one :profile
	has_many :photos
	has_many :subscriptions
	has_many :business_msgs
end
