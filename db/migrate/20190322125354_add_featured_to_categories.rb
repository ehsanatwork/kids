class AddFeaturedToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :featured, :boolean, default: false
  end
end
