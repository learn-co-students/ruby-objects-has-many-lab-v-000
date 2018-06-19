## This is the code for the Artist class.
## This will be related to the Song class.
## The tests for the artist.rb will not pass
## properly if the songs class isn't working

class Artist
  attr_accessor :title, :genre, :name

  def initialize(name = nil)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
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
    count = Song.songs
    count.length
  end

end
