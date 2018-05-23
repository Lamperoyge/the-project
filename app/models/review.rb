class Review < ApplicationRecord
  belongs_to :post
  validates :content, length: { minimum: 20 }
end
