json.array!(@users) do |user|
  json.extract! user, :id, :name, :price, :description
  json.url user_url(user, format: :json)
end
