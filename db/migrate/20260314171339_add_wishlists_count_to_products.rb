class AddWishlistsCountToProducts < ActiveRecord::Migration[8.1]
  def change
    unless column_exists?(:products, :wishlists_count)
      add_column :products, :wishlists_count, :integer, default: 0, null: false
    end
  end
end
