require "pry"

class Artist

  @@song_count = 0

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    add_all_songs
  end

  def add_song_by_name(songname)
    song = Song.new(songname)
    @songs << song
    add_all_songs
    song.artist = self
  end

  def add_all_songs
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
end
