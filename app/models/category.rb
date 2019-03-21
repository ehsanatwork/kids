class Category < ApplicationRecord
  has_many :CategoryPost
  has_many :posts, through: :CategoryPost
end
