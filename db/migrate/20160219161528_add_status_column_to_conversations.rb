class AddStatusColumnToConversations < ActiveRecord::Migration
  def change
  	add_column :conversations, :status, :integer
  end
end
