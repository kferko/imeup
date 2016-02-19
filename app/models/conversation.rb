class Conversation < ActiveRecord::Base
	belongs_to :user_a, :foreign_key => :user_a_id, class_name: 'User'
  	belongs_to :user_b, :foreign_key => :user_b_id, class_name: 'User'

  	has_many :user_msgs, dependent: :destroy

  	validates_uniqueness_of :user_a_id, :scope => :user_b_id

  	scope :involving, -> (user) do
    	where("conversations.sender_id =? OR conversations.recipient_id =?",user.id,user.id)
  end

  	scope :between, -> (sender_id,recipient_id) do
    	where("(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
  end
end
