class DropMenuIdFromUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :menu_id
  end

  def down
  	add_column :users, :menu_id
  end
end
