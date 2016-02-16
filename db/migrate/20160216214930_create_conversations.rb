class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_a_id
      t.integer :user_b_id

      t.timestamps null: false
    end
  end
end
