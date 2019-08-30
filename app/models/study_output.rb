class StudyOutput < ApplicationRecord
  validates :text, presence: {message: "※ 入力して下さい"}
  validates :url, presence: {message: "※ 入力して下さい"}
end
