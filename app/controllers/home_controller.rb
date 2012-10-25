class HomeController < ApplicationController

  def index
    @songs = Song.all
  end

  def about
  end

  def faq
  end
end