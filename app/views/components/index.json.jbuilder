json.array!(@components) do |component|
  json.extract! component, :id, :dish_id, :amount, :units, :ingredient_id
  json.url component_url(component, format: :json)
end
