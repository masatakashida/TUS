json.extract! testpost, :id, :text, :created_at, :updated_at
json.url testpost_url(testpost, format: :json)
