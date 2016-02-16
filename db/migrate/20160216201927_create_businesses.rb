class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :city
      t.string :state
      t.date :founded
      t.string :industry
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.string :avatar_file_size
      t.text :status

      t.timestamps null: false
    end
  end
end
