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
	has_many :conversations, :foreign_key => :user_a_id
	has_and_belongs_to_many :contacts, :join_table => :conversations, :foreign_key => :user_a_id, :association_foreign_key => :user_b_id, class_name: 'User'
	has_many :subscriptions
end
