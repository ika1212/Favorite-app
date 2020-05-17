class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :body, :image, presence: true
end
