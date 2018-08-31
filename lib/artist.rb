require 'pry'
class Artist 
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    
  end
  def songs
    @songs 
  end
  def add_song(song)
    song.artist = self
    @songs << song
    
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    #I had "title" as the argument in song.rb
    
  end
  
  def self.song_count
    Song.all.count
   
  end
  
  
end