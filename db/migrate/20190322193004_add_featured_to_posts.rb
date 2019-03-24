class AddFeaturedToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :featured, :boolean, default: false
  end
end
