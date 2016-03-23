json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :description, :alternative_name, :measure_unit_id
  json.url ingredient_url(ingredient, format: :json)
end
