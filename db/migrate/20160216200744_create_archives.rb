class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :user_id
      t.string :title
      t.string :msg_string

      t.timestamps null: false
    end
  end
end
