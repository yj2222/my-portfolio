class Image < ApplicationRecord
  belongs_to :portfolio
  mount_uploader :image, ImageUploader

  validates :image, presence: true
end
