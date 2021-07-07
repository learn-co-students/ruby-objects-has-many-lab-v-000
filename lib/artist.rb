require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name = "", songs = [])
   @name = name
   @songs = songs
  end 
  
  def name
   @name
  end 
  
  def songs 
   @songs 
  end 
    
  def add_song(song)
    @songs << song 
    @@song_count = @@song_count + 1
    song.artist = self
    song
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song 
    @@song_count = @@song_count + 1
    new_song.artist = self
    new_song
  end 
  
  def self.song_count
    @@song_count
  end 
end 