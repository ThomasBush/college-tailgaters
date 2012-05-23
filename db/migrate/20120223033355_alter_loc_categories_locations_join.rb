class AlterLocCategoriesLocationsJoin < ActiveRecord::Migration
  def change
  	rename_table :locations_loc_categories, :loc_categories_locations
  end

end
