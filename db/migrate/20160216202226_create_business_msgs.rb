class CreateBusinessMsgs < ActiveRecord::Migration
  def change
    create_table :business_msgs do |t|
      t.integer :business_id
      t.text :message
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.string :avatar_file_size

      t.timestamps null: false
    end
  end
end
