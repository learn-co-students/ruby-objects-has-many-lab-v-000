require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def self.song_count
      Song.all.size
  end
end
