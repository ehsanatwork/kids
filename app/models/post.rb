class Post < ApplicationRecord
  has_many :CategoryPost
  has_many :categories, through: :CategoryPost
  belongs_to :user
end