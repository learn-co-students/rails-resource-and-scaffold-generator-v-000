json.array!(@posts) do |post|
  json.extract! post, :id, :author, :description
  json.url post_url(post, format: :json)
end
