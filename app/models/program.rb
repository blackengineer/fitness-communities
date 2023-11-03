class Program < ApplicationRecord
  # validations
  validates :title, presence: true
  validates :description, presence: true
  
  # associations
  has_one_attached :avatar
  has_rich_text :description
  belongs_to :user
end
