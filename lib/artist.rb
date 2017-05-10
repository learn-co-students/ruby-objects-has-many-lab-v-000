require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count=0
  def initialize(name)
    # binding.pry
    @name=name
    @songs = []
  end

  def add_song(song)
    # binding.pry
    @songs << song
    @@song_count += 1
    song.artist=self
    self
    # binding.pry
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end



end
