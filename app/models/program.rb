class Program < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  # validations
  validates :title, presence: true
  validates :description, presence: true
  
  # associations
  has_one_attached :avatar
  belongs_to :user
end
