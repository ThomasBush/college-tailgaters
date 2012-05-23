class CreateLocationsTeamsJoin < ActiveRecord::Migration
  def up
  	create_table :locations_teams, :id =>false do |t|
  		t.integer "location_id"
  		t.integer "team_id"
  	end
  	add_index :locations_teams, ["location_id", "team_id"]
  end

  def down
  	drop_table :locations_teams
  end
end
