json.array!(@shops) do |shop|
  json.extract! shop, :id, :src, :lang, :desc
  json.url shop_url(shop, format: :json)
end
