class Book < ApplicationRecord
  belongs_to :category

  has_many :reviews, dependent: :destroy
  has_many :marks, dependent: :destroy

  scope :most_books, ->{order(rate: :desc).limit(6)}
  scope :list_books_with_author, ->author{where(author: author).order(rate: :desc)}

  mount_uploader :photo, PhotoUploader

  STATUS = ["reading", "read", "favorite"]
end
