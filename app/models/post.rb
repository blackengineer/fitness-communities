class Post < ApplicationRecord
  belongs_to :user
  belongs_to :community
  has_one_attached :avatar
  
  validates :title, presence: true
end
