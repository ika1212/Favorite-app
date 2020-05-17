class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :body, :image, presence: true
  
  belongs_to :user
end
