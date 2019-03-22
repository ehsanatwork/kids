class PagesController < ApplicationController
  def index
    @featured_categories = Category.featured
  end

  def about
  end

  def contact
  end
end
