class Menu < ActiveRecord::Base
  attr_accessible :user_id, :items, :loc_category_ids
  
  belongs_to :users
  has_many :loc_categories
end
