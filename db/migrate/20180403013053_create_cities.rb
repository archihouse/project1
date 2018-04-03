class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.text :name
      t.text :image
      t.integer :population
      t.integer :house_id
      t.integer :region_id

      t.timestamps
    end
  end
end
