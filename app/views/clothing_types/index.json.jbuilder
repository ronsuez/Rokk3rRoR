json.array!(@clothing_types) do |clothing_type|
  json.extract! clothing_type, :id, :name
  json.url clothing_type_url(clothing_type, format: :json)
end
