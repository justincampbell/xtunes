class Purchase < ActiveRecord::Base
  attr_accessible :price, :song_id
  belongs_to :user
  belongs_to :song

  validates :user, :song, :price, :presence => true

end
