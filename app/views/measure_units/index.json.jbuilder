json.array!(@measure_units) do |measure_unit|
  json.extract! measure_unit, :id, :standard_name, :nonstandard_name, :quantity_in_standard
  json.url measure_unit_url(measure_unit, format: :json)
end
