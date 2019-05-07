json.array!(@artciles) do |artcile|
  json.extract! artcile, :id, :title, :body
  json.url artcile_url(artcile, format: :json)
end
