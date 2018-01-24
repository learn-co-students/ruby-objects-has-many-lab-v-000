require 'pry'

class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    self.songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end
end
