json.extract! post, :id, :title, :body, :url, :avatar, :user_id, :community_id, :created_at, :updated_at
json.url post_url(post, format: :json)
json.avatar url_for(post.avatar)
