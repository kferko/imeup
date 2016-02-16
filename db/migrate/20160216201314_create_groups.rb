class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :user_id
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.string :avatar_file_size

      t.timestamps null: false
    end
  end
end
