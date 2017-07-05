require 'pry'
class Artist
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.artist
    self.name
  end

  def self.song_count
    #binding.pry
    @@song_count
  end
end
