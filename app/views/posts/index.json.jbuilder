json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :description, :body
  json.url post_url(post, format: :json)
end
