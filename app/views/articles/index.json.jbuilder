json.array!(@articles) do |article|
  json.extract! article, :id, :tit
  json.url article_url(article, format: :json)
end
