class CreateLocCategories < ActiveRecord::Migration
  def self.up
    create_table :loc_categories do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :loc_categories
  end
end
