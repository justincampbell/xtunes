class Artist < ActiveRecord::Base
  attr_accessible :albums, :bio, :name, :songs
end
