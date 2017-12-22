require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
  #takes in an argument of a song
  #adds that song to the artist's collection
  #tells the song that it belongs to that artist
    @songs << song #We push the new song argument into our @songs array
    @@song_count += 1 #We add 1 to our class constant every time we create a new song
    song.artist = self #We assign the song class's artist to our artist class
  end

  def add_song_by_name(song_name)
  #takes in an argument of a song name
  #creates a new song with it
  #associates the song and artist
    song = Song.new(song_name) #we create a new song class and save it to the variable song
    @songs << song #we push the new song in the our @songs array
    @@song_count += 1 #we add to our song count
    song.artist = self #we assign the song class's artist to our artist class
  end

  # def songs
  #   @songs
  # end

  def self.song_count
    #Artist #name .song_count is a class method that
    #returns the total number of songs associated to all existing artists
    @@song_count
  end


end
