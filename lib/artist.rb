require "pry"
class Artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name

  def songs
    @songs
  end
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    #  binding.pry
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1

  end

  def self.song_count
     @@song_count
  end
end
