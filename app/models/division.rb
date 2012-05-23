class Division < ActiveRecord::Base
  attr_accessible :name
  
  has_many :conferences
  
  validates_presence_of :name
end
