require 'pry'

class Artist
  attr_accessor :name, :songs

@@total_songs = 0

  def initialize(name)  
    @name = name
    @songs = [] #=> demonstrates the has-many side of your association; this is a collection of info
  end
  
  def add_song(song)
    song.artist = self #=> tell the song about its artist; self is an instance of artist
    @@total_songs += 1
    @songs << song #=> tell the artist about its song
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name(title)
    
    new_song = Song.new(title)
    add_song(new_song)
 
    #=> new_song  implicit return value
    #=> use key word "return" when you want to terminate loop, method, etc.
  end
  
  def self.song_count
    @@total_songs
  end
  
  
end

