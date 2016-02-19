class AddConversationIdColumnToUserMsgs < ActiveRecord::Migration
  def change
  	add_column :user_msgs, :conversation_id, :integer
  end
end
