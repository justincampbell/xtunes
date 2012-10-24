class Artist < ActiveRecord::Base
  attr_accessible :name, :bio
  has_many :songs
end
