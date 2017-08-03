class CreateCenters < ActiveRecord::Migration[5.1]
  def change
    create_table :centers do |t|
      t.integer :center_id
      t.integer :center_type
      t.integer :state_id
      t.integer :municipality_id
      t.integer :parish_id
      t.text :name
      t.text :direction
      t.integer :code_new_center

      t.timestamps
    end
  end
end
