class User < ApplicationRecord
  rolify
  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable
         
  # Associations
  has_many :programs
  has_many :blogs
  has_many :communities
  has_one_attached :avatar
  
  validates :username, presence: true
  
  def to_s
    email
  end
  
  after_create :assign_default_role
  
  def assign_default_role
    if User.count == 1
      self.add_role(:admin) if self.roles.blank?
      self.add_role(:coach)
      self.add_role(:student)
      self.add_role(:employer)
      self.add_role(:moderator)
    else
      self.add_role(:student) if self.roles.blank?
    end
  end
end
