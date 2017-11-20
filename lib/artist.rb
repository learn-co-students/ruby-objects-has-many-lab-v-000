require 'pry'
class Artist
  @@song_count = 0
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  #creates a new artist everytime

  def songs
    @songs
  end

  def add_song(song)
      @@song_count +=1
    @songs << song
    song.artist = self
  end
#would increase the song count everytime 

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
#does the add_song method here

  def self.song_count
    @@song_count
  end

end
