json.extract! movement, :id, :name, :description, :avatar, :created_at, :updated_at
json.url movement_url(movement, format: :json)
json.avatar url_for(movement.avatar)
