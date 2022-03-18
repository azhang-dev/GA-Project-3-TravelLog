class AddLatToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :lat, :string
  end
end
