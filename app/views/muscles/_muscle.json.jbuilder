json.extract! muscle, :id, :origin, :insertion, :concentric, :eccentric, :isometric, :innervation, :blood_supply, :avatar, :created_at, :updated_at
json.url muscle_url(muscle, format: :json)
json.avatar url_for(muscle.avatar)
