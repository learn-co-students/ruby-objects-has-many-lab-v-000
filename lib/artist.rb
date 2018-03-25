require 'pry'

class Artist

  @@song_count = 0

  attr_accessor :name, :song

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
    @@song_count += 1
  end

  def add_song_by_name(song_name)
# binding.pry
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    # binding.pry
    @@song_count
  end
end
