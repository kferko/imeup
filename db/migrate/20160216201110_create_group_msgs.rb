class CreateGroupMsgs < ActiveRecord::Migration
  def change
    create_table :group_msgs do |t|
      t.integer :group_id
      t.text :message

      t.timestamps null: false
    end
  end
end
