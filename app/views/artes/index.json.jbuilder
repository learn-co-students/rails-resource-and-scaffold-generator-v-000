json.array!(@artes) do |arte|
  json.extract! arte, :id, :title, :body
  json.url arte_url(arte, format: :json)
end
