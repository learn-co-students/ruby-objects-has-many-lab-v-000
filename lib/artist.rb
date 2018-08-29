#an artist has many songs
require 'pry'

class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
     song.artist = self #tell the song about it's artist
     @songs << song #telling the artist about it's song
    # self.songs << song
  end
 
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song_by_name(name)
   song = Song.new(name)
   self.add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end  