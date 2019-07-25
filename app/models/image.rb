class Image < ApplicationRecord
  belongs_to :portfolio
  mount_uploader :url, ImageUploader
end
