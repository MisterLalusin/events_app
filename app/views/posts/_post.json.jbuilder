json.extract! post, :id, :title, :body, :events, :created_at, :updated_at
json.url post_url(post, format: :json)
