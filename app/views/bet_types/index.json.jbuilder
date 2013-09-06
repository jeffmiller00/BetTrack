json.array!(@bet_types) do |bet_type|
  json.extract! bet_type, :name
  json.url bet_type_url(bet_type, format: :json)
end
