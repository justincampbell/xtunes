class Artist < ActiveRecord::Base
  attr_accessible :name, :bio
  has_and_belongs_to_many :songs
end
