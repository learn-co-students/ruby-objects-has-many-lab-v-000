# Artist
#   #new
#     is initialized with a name
#     is initialized with an empty collection of songs
#   #name
#     has an attr_accessor for name
#     #songs
#       has many songs
#     #add_song
#       takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist
#     #add_song_by_name
#       takes in an argument of a song name, creates a new song with it and associates the song and artist
#     .song_count
#       is a class method that returns the total number of songs associated to all existing artists
#       uses the class variable, @@song_count


class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
