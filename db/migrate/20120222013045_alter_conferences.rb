class AlterConferences < ActiveRecord::Migration
  def up
  	add_column("conferences", "division_id", :int)
  	add_index("conferences", "division_id")
  end

  def down
  	remove_index("conferences", "division_id")
  	remove_column("conferences", "division_id", :int)
  end
end
