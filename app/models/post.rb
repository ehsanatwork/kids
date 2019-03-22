class Post < ApplicationRecord
  has_one_attached :thumbnail
  has_many :CategoryPost
  has_many :categories, through: :CategoryPost
  belongs_to :user
end