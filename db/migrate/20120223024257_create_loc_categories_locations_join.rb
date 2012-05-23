class CreateLocCategoriesLocationsJoin < ActiveRecord::Migration
  
  def up
  	create_table :locations_loc_categories, :id => false do |t|
  	  t.integer "location_id"
  	  t.integer "loc_category_id"
  	end
  	add_index :locations_loc_categories, ["location_id", "loc_category_id"], :name =>"locations_categories_index"
  end

  def down
  	drop_table :locations_loc_categories
  end
end
