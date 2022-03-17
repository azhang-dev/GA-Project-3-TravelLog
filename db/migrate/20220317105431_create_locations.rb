class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :country
      t.boolean :visited
      t.date :date_visited
      t.boolean :bucketlist
      t.text :images
      t.text :note
      t.integer :user_id

      t.timestamps
    end
  end
end
