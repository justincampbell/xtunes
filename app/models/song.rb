class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile
  #has_and_belongs_to_many :albums, :artists, :genres
  mount_uploader :audiofile, AudiofileUploader
end
