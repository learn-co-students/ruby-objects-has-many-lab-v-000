require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
  @name = name #setting the objects name attribute
  @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song| song.artist == self
     end
  end

  def add_song(song)
    song.artist = self #associating song with artist
  end

  def add_song_by_name(name)
    song = Song.new(name)#created new song
    add_song(song) #associate song with the artist
  end

  def self.song_count
    Song.all.count
  end

end
