require 'pry'

class Artist
  attr_accessor :songs, :name
  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@songs << song
    song.artist = self
  end

  def self.song_count
    @@songs.count
  end

end
