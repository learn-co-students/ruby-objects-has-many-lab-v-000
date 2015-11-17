require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_inst)
    self.songs << song_inst
    song_inst.artist = self
    @@song_count += 1
  end

  def add_song_by_name(str)
    add_song(Song.new(str))
  end

  def self.song_count
    @@song_count
  end
end