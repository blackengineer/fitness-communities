class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :user
  belongs_to :community
  has_one_attached :media
  
  validates :title, presence: true
end
