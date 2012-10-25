class Purchase < ActiveRecord::Base
  attr_accessible :price
  belongs_to :users
end
