class Community < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  has_one_attached :avatar
  has_many :posts
  
  validates :name, presence: true
end
