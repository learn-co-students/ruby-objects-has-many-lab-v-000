require 'pry'
class Artist
  attr_accessor :name, :songs

@@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count << song
    song.artist = self
  end

  def self.song_count
    @@song_count = @@song_count.count
  end
end
