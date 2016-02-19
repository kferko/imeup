class AddConversationIdColumnToArchives < ActiveRecord::Migration
  def change
  	add_column :archives, :conversation_id, :integer
  end
end
