class AddMenuIdToLocCategories < ActiveRecord::Migration
  def change
    add_column :loc_categories, :menu_id, :integer

  end
end
