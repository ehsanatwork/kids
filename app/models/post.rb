class Post < ApplicationRecord
  before_save :check_for_featured_posts

  has_one_attached :thumbnail
  
  has_many :CategoryPost
  has_many :categories, through: :CategoryPost
  
  belongs_to :user


  private
  def check_for_featured_posts
    featured_posts = Post.where(featured: true)
    unless featured_posts.nil?
      featured_posts.each do |f|
        f.update_column(:featured, false)
      end      
    end
  end
end