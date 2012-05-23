class RemoveItemsFromMenus < ActiveRecord::Migration
  def up
 	remove_column :menus, :items
  end

  def down
  	add_column :menus, :items
  end
end
