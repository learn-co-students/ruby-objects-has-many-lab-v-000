require 'pry'
class Artist 
  attr_accessor :name
  @@song_count = 0
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song_name)
    @songs << song_name 
    song_name.artist = self
    @@song_count += 1
  end 

  def add_song_by_name(song)
    song_name = Song.new(song)
    song_name.artist = self
	  self.songs << song_name
	  @@song_count += 1
  end
  def songs
    @songs
  end
  def self.song_count
    @@song_count
    
  end
end