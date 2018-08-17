require 'pry'
class Artist

  attr_accessor :name, :artist
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
    @songs << song
  end

  def self.song_count
    Song.all.count
  end

end
