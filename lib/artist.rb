#new is initialized with a name
#new is initialized with an empty collection of songs
#new has an attr_accessor for name

class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def new(song)
    @songs << song
  end

#songs has many songs

  def songs
    @songs
  end

#add_song takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

#add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

#.song_count is a class method that returns the total number of songs associate to all existing artists
  def self.song_count
    @@song_count
  end

end

