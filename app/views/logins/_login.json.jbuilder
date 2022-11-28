json.extract! login, :id, :description, :login, :senha, :created_at, :updated_at
json.url login_url(login, format: :json)
