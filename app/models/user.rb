class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_one :profile
	has_many :photos
	has_many :archives
	has_many :user_groups
	has_many :groups, through: :user_groups
	has_many :group_msgs
	has_many :user_msgs
	has_many :conversations
	has_many :contacts
	has_many :subscriptions
end
