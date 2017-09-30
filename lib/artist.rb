require 'pry'

class Artist #what's the goal: compile  an Artists' songs, all of them
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs<<song # add song into the array (self.songs vs @songs -- ask about this) self - adele lets adele know abt the song
     #self referes to the artist I'M NOT SURE what the .artist is/comes from.
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs<<song
    @@song_count += 1
    #adele.songs.last.name
  end

  def self.song_count
    @@song_count
  end
end
