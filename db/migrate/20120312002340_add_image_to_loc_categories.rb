class AddImageToLocCategories < ActiveRecord::Migration
  def change
    add_column :loc_categories, :image, :string

  end
end
