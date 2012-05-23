class Location < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zip, :loc_category_ids, :team_ids
  
  has_and_belongs_to_many :teams
  has_and_belongs_to_many :loc_categories
  
  validates_presence_of :name
  validates_associated :teams, :loc_categories
end
