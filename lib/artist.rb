require "pry"
class Artist

attr_accessor :name, :song

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry

  end

  def songs
    @songs
    #binding.pry
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1
    song.artist = self
    song.name = name
  end

  def self.song_count
    @@song_count
  end
end
