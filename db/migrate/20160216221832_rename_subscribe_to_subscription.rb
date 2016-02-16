class RenameSubscribeToSubscription < ActiveRecord::Migration
  def change
  	drop_table :subscribes
  	create_table :subscriptions do |t|
  	  t.integer :business_id
      t.integer :user_id

      t.timestamps null: false
    end
  end

end
