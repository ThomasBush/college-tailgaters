class AlterTeams < ActiveRecord::Migration
  def up
  	add_column("teams", "conference_id", :int)
  	add_index("teams", "conference_id")
  end

  def down
  	remove_index("teams", "conference_id")
  	remove_column("teams", "conference_id", :int)
  end
end
