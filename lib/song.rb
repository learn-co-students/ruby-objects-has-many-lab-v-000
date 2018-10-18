require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.artist 
    Artist
  end
  
  def artist_name
    #binding.pry
    if artist == nil
      nil 
    else
      self.artist.name
    end
  end
end 