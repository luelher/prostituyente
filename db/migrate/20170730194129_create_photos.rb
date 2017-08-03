class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.attachment :file
      t.references :center
      t.datetime :date_file

      t.timestamps
    end
  end
end
