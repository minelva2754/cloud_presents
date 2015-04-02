json.array!(@presents) do |present|
  json.extract! present, :id, :name, :price, :descript
  json.url present_url(present, format: :json)
end
