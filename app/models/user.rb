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
  has_many :movements
  has_many :muscles
  has_many :blogs, dependent: :destroy
  has_many :communities
  has_many :posts, dependent: :destroy
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
  
  validate :must_have_a_role, on: :update
  
  private
  
  def must_have_a_role
    unless roles.any?
      errors.add(:roles, "Athlete must have at least one role")
    end
  end
end
