class Movement < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_one_attached :avatar
  
  validates :name, presence: true
end
