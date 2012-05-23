class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :user_id
      t.string :items
      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
