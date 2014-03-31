json.array!(@auto_parts) do |auto_part|
  json.extract! auto_part, :id, :name, :description, :price, :vehicle_make, :vehicle_model
  json.url auto_part_url(auto_part, format: :json)
end
