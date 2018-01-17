require 'pry'
class Artist
attr_accessor :name
@@song_count = 0


  def initialize(name)
    @name = name
    @songs = []
    #here we are initializing a new instance of the Artist class.
    #like creating artist Beyonce or Adele. This there for isn't an approp.
    #place to increment the song counter because the song isn't being created here
    #just the artist!!
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #here we tell the collectible item (a song) who it belongs to.
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    #here we tell the collectible item (a post) who it belongs to.
    @@song_count += 1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end


end
