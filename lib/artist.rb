require 'pry'

class Artist

  attr_accessor :name, :song
  @@song_count = 0
  @@counter = 0

  def initialize(name)
    @name = name
    #@song = song
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    #binding.pry
    song.artist = self
  end

  def add_song_by_name(song)
    #@@counter += 1
    song = Song.new(song)
    @songs << song
    @@song_count += 1
    song.artist = self
    #binding.pry
  end

  def self.song_count
    #binding.pry
    return @@song_count
  end

end
