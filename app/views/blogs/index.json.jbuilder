json.array!(@blogs) do |blog|
  json.extract! blog, :name, :content, :blog_date
  json.url blog_url(blog, format: :json)
end
