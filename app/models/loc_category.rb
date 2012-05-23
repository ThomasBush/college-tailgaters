class LocCategory < ActiveRecord::Base
  attr_accessible :name, :location_id, :image
  
  has_and_belongs_to_many :locations
  belongs_to :menus
  
  validates_presence_of :name
end
