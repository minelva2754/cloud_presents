json.array!(@match_requests) do |match_request|
  json.extract! match_request, :id, :request_user_id, :target_user_id
  json.url match_request_url(match_request, format: :json)
end
