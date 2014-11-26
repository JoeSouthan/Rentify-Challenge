json.array!(@properties) do |property|
  json.extract! property, :id, :postcode, :description, :current_rent, :initial_cost
  json.url property_url(property, format: :json)
end
