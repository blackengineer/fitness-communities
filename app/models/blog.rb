class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates :title, presence: true
  
  has_one_attached :avatar
  
  belongs_to :user
end
