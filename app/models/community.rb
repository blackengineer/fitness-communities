class Community < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  has_one_attached :avatar
  
  validates :name, presence: true
end
