json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :description, :price
  json.url shop_url(shop, format: :json)
end
