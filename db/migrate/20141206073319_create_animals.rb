class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :image
      t.text :description
      t.string :country_of_origin
      t.text :biological_properties
      t.text :domestic_properties
      t.string :best_climate
      t.text :rearing_info
      t.text :diet
      t.references :user, index: true

      t.timestamps
    end
  end
end
