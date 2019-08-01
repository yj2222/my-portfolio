class Portfolio < ApplicationRecord
  has_many :images, dependent: :delete_all
  accepts_nested_attributes_for :images, allow_destroy: true

  mount_uploader :top_image, ImageUploader
end
