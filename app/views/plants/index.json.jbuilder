json.array!(@plants) do |plant|
  json.extract! plant, :id, :common_name, :scientific_name, :image, :description, :country_of_origin, :botanical_properties, :domestic_properties, :climate, :growing_instructions, :user_id
  json.url plant_url(plant, format: :json)
end
