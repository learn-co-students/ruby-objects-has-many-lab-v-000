require 'pry'
class Artist
  @@song_count = 0
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  #add_song
      #takes in an argument of a song and adds that song to the artist's
      #collection and tells the song that it belongs to that artist
    def add_song(song)
      @@song_count += 1
      @songs << song
      song.artist = self #self refers to Artist

    end

    #add_song_by_name
    #  takes in an argument of a song name, creates a new song with it
    #and associates the song and artist (FAILED - 1)
    def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
      @songs << song
      @@song_count += 1
    end

    def self.song_count
      @@song_count
    end

end
