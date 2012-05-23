class AddLocCategoryIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :loc_category_id, :integer

  end
end
