require_relative 'song'

class Artist 
  attr_accessor :name, :songs 

  @@song_count = 0

  def initialize(name)
    @name, @songs = name, []
  end

  def add_song(song_name)
    songs << song_name 
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
end

