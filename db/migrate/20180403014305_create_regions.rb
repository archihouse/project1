class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.text :name
      t.text :culture
      t.text :religion
      t.text :capital
      t.text :image

      t.timestamps
    end
  end
end
