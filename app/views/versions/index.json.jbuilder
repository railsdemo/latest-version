json.array!(@versions) do |version|
  json.extract! version, :content, :version_date, :current
  json.url version_url(version, format: :json)
end
