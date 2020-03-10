# require "pry"
class Song
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    # self.artist.name if self.artist != nil
    artist.name if artist
  end
  
end