class Category < ApplicationRecord
  has_many :CategoryPost
  has_many :posts, through: :CategoryPost

  scope :featured, -> {where(:featured => true)}
end
