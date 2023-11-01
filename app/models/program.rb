class Program < ApplicationRecord
  has_one_attached :avatar
  validates :title, presence: true
  validates :description, presence: true
end
