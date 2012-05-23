class Conference < ActiveRecord::Base
  attr_accessible :name, :division_id
  
  belongs_to :division
  has_many :teams
  
  validates_presence_of :name
  validates_associated :division 
end
