require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    #returns name or artist, or nil if there is no artist
    self.artist != nil ? self.artist.name : nil
  end
end
