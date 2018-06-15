require 'pry'

class Artist

  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song_title)
    this_song = Song.new(song_title)
    @songs << this_song
    @@song_count += 1
    this_song.artist = self
  end

  def self.song_count
    @@song_count
  end



end