json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :time_for_cook, :instructions, :appliances_used
  json.url dish_url(dish, format: :json)
end
