require 'pry'

class Artist
  attr_accessor :name, :songs, :song_name

  @@song_count = 0

  def initialize(name)
    @name = name
    @song_name = song_name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
    song
  end

  def add_song_by_name(song_name)
      song = Song.new(song_name)
      @songs << song
      @@song_count += 1
      song.artist = self
      song
    end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
  
end
