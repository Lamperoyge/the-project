class Post < ApplicationRecord
  validates :title, :content, :category_id, presence: true
  belongs_to :category
  mount_uploader :photo, PhotoUploader
end
