class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :common_name, null: false
      t.string :scientific_name
      t.string :image
      t.text :description
      t.string :country_of_origin
      t.text :botanical_properties
      t.text :domestic_properties
      t.string :climate
      t.text :growing_instructions
      t.references :user, index: true, null:false

      t.timestamps
    end
  end
end
