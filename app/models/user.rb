class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :purchases
  has_many :songs, :through => :purchases
end
