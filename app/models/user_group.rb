class UserGroup < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_one :group
end
