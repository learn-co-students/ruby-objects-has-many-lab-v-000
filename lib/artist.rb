require 'pry'
class Artist
  attr_accessor :name
  @@song_count = 0 #expects a class variable. @@

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #an object is being passed in, not a string
    song.artist = self #it was expecting the artist to be returned along
    #with the song being added.
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name) #initializing a new song with a song_name
    song.artist = self #self becaust the new instance of the class Artist is
    #the attribute artist of the song class
    @songs << song #push it  then check the song class
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end


end
