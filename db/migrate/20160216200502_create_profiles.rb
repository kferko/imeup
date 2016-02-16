class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.date :birthday
      t.string :profession
      t.string :current_employer
      t.string :high_school
      t.string :college
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.string :avatar_file_size
      t.text :status

      t.timestamps null: false
    end
  end
end
