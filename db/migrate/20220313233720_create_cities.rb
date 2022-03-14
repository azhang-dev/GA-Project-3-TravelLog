class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.date :travel_date
      t.integer :country_id
      t.boolean :bucketlist

      t.timestamps
    end
  end
end
