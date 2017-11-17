require 'pry'

class Artist
  attr_accessor :name
  @@song_count = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count << @songs

    song.artist = self
  end


  def add_song_by_name(name)
    name = Song.new(name)
    @songs << name
    @@song_count << @songs

    name.artist = self
  end

  def self.song_count
    @@song_count = @@song_count.length
    @@song_count
  end
end
