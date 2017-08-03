class AddColumnsToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column  :photos, :lat, :float
    add_column  :photos, :lon, :float
  end
end
