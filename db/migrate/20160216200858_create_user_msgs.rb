class CreateUserMsgs < ActiveRecord::Migration
  def change
    create_table :user_msgs do |t|
      t.text :message

      t.timestamps null: false
    end
  end
end
