class PagesController < ApplicationController
  def index
    @featured_categories = Category.featured
    @featured_post = Post.find_by(featured: true)
  end

  def about
  end

  def contact
  end
end
