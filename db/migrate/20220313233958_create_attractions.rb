class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :visit_date
      t.integer :city_id

      t.timestamps
    end
  end
end
