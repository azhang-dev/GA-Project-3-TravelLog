class AddLngToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :lng, :string
  end
end
