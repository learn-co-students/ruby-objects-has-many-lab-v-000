require 'pry'                  # => true
class Artist
  attr_accessor :name, :songs  # => nil

  @@song_count = 0
  def initialize(name, songs = [])
    @name = name
    @songs = []
  end

  def add_song(song)
    @@song_count += 1
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    @@song_count += 1
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@song_count
  end

  # def songs
  #   @songs
  # end

  # def artist_name
  #   self.artist.name
  # end
end
