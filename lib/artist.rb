require 'pry'

class Artist
  attr_accessor :name
  @@song_count = 2

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    songs << song
  end

  def self.song_count
    @@song_count
  end
end
