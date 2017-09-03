require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all_artists = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    @@all_artists.each {|artist| @@song_count += artist.songs.length}
    @@song_count
  end
end
