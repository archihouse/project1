class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.text :name
      t.text :lord
      t.text :heir
      t.text :words
      t.text :image

      t.timestamps
    end
  end
end
