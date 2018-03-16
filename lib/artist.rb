require 'pry'
class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end #def initialize

  def songs
    @songs
  end #def songs

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end #def add_song_by_name

  def self.song_count
    @@song_count
  end #def song_count

end #class Artist
