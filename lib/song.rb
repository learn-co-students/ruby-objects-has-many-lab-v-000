require 'pry'
class Song
  attr_accessor :name, :artist
  @@all=[]
  
  def initialize(song)
  binding.pry
  @song = song
  @@all << self
  
end

  def artist_name
    self.artist.name
  end
  
  def self.all
    @@all
  end
end