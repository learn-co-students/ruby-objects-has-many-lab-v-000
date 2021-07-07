require 'pry'

class Artist 
  
  @@song_counter = 0 
  
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name 
    @songs = []
  end   
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_counter += 1 
  end   

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_counter += 1
    song.artist = self 
  end   
  
  def self.song_count
    @@song_counter
  end   
end   