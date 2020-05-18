class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :body, :image, presence: true
  
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
