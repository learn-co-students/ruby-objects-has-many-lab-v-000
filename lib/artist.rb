require 'pry'
class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @songs = []
    @name = name

  end

  def add_song(song)
    # Song.new(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    self.songs << song
    # @@song_count += 1
    song.artist = self
    @@song_count += 1

  end

  def self.song_count
    @@song_count
  end




end
