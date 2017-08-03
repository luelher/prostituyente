class AddColumnsToCenters < ActiveRecord::Migration[5.1]
  def change
    add_column  :centers, :state, :string
    add_column  :centers, :municipality, :string
    add_column  :centers, :parish, :string
  end
end

