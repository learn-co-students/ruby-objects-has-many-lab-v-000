# An artist should have many songs and a song should belong to an artist
require 'pry'

class Artist
  attr_accessor :name

  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  # takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
  def add_song(song)
    @@songs << song
    song.artist = self
  end

  #  takes in an argument of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(song_name)
      song = Song.new(song_name)
      @@songs << song
      song.artist = self
  end

  # is a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    @@songs.length
  end

end
