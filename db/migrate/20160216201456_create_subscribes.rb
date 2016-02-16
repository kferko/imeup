class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.integer :business_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
