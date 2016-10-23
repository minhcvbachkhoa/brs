class User < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :marks, dependent: :destroy
end
