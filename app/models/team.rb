class Team < ActiveRecord::Base
  attr_accessible :name, :nickname, :shortname, :street, :city, :state, :zip, :conference_id, :location_id
  
  belongs_to :conference
  has_and_belongs_to_many :locations
  has_many :users
  
  validates_presence_of :name
  validates_associated :conference
end
