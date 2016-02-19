class Conversation < ActiveRecord::Base
	belongs_to :user_a, :foreign_key => :user_a_id, class_name: 'User'
  	belongs_to :user_b, :foreign_key => :user_b_id, class_name: 'User'

  	has_many :user_msgs, dependent: :destroy

  	validates_uniqueness_of :user_a_id, :scope => :user_b_id

  	scope :involving, -> (user) do
    	where("conversations.user_a_id =? OR conversations.user_b_id =?",user.id,user.id)
  end

  	scope :between, -> (user_a_id,user_b_id) do
    	where("(conversations.user_a_id = ? AND conversations.user_b_id =?) OR (conversations.user_a_id = ? AND conversations.user_b_id =?)", user_a_id, user_b_id, user_b_id, user_a_id)
  end
end
