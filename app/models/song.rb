class Song < ActiveRecord::Base
  attr_accessible :name, :artist, :price, :audiofile, :album, :genre
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :genres
  has_many :purchases
  has_many :users, :through => :purchases
  mount_uploader :audiofile, AudiofileUploader
end
