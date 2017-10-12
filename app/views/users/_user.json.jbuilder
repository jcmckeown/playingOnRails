json.extract! user, :id, :display, :login, :created_at, :updated_at
json.url user_url(user, format: :json)
