require_relative "./song"
require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all_songs = []

  def self.song_database
    @@all_songs
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  # ADD SONGS SECTION

  def add_song(song)
    song.artist = self
    self.songs << song
    self.class.add_song_to_database(song)
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    self.class.add_song_to_database(song)
  end

  # CLASS METHODS SECTION

  def self.add_song_to_database(song)
    song_database << song
  end

  def self.song_count
    song_database.length
  end


end
