json.array!(@animals) do |animal|
  json.extract! animal, :id, :common_name, :scientific_name, :image, :description, :country_of_origin, :biological_properties, :domestic_properties, :best_climate, :rearing_info, :diet, :user_id
  json.url animal_url(animal, format: :json)
end
