json.extract! program, :id, :title, :description, :avatar, :created_at, :updated_at
json.url program_url(program, format: :json)
json.avatar url_for(program.avatar)
