require "pry"
class Artist
  attr_accessor :name, :songs
 
  def initialize(name)
    @name = name
    @songs = []
      
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    #binding.pry
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
    
  end 
  
  def self.song_count
    x = Song.all
    y = x.count
    y 
  end 
end