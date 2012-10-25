class Purchase < ActiveRecord::Base
  attr_accessible :price
  belongs_to :user
  belongs_to :song
end
