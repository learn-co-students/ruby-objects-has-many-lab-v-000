require 'pry'

class Artist
  attr_accessor :name, :songs
  @@songs = Array.new
  @@song_count

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@songs << song
  end

  def self.song_count
    @@song_count = @@songs.count
  end

end
