require "pry"

class Artist

  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  # def self.count = (count)
  #   @@song_count = count
  # end

  def self.count
    @@song_count
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    # binding.pry
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    # binding.pry
    self.count
  end

end
