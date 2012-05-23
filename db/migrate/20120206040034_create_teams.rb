class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :nickname
      t.string :shortname
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
