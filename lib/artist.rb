require "pry"

class Artist 
  attr_accessor :name, :song, :artist, :title
  
  @@count = 0 
  
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def add_song(song)
    #binding.pry
    song.artist = self
    @songs << song
    @@count += 1
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end
  
  def songs
    @songs
  end
  
  def self.song_count
    @@count
  end
end