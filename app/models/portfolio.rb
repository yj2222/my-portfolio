class Portfolio < ApplicationRecord
  has_many :images, dependent: :delete_all
  accepts_nested_attributes_for :images, allow_destroy: true
  mount_uploader :top_image, ImageUploader

  validates :title, presence: {message: "※ 入力して下さい"}, length: { maximum: 12 }
  validates :sub_title, presence:  {message: "※ 入力して下さい"}, length: { maximum: 16 }
  validates :top_image, presence: {message: "※ 画像を投稿して下さい"}
  
  validates :environment, presence:  {message: "※ 入力して下さい"}, length: { maximum: 300 }
  validates :discription, presence:  {message: "※ 入力して下さい"}, length: { maximum: 300 }
  validates :usage, presence:  {message: "※ 入力して下さい"}, length: { maximum: 300 }
  validates :github_url, presence:  {message: "※ 入力して下さい"}, length: { maximum: 300 }
  validates :app_url, presence:  {message: "※ 入力して下さい"}, length: { maximum: 300 }

  validates :images, presence: {message: "※ 画像を投稿して下さい"}

end
