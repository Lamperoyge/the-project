class Post < ApplicationRecord
  validates :title, :content, :category_id, presence: true
  belongs_to :category
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
