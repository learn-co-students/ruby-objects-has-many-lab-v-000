require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    @artist == nil ? nil : self.artist.name
  end

end
