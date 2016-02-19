class AddUserIdToUserMsgs < ActiveRecord::Migration
  def change
  	add_column :user_msgs, :user_id, :integer
  end
end
