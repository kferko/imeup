class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size

      t.timestamps null: false
    end
  end
end
