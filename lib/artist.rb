#build Artist class

class Artist
  #attr_accessors
  attr_accessor :name, :songs, :song, :song_name

  #class variable song count
  @@song_count = 0

  #initialize with name and empty array of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    #has many songs, retunrs the array of songs
    @songs
  end

  #method that adds song to songs array
  #tells the song that belongs to the artist
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  #creates new song by name and adds to array, tells new song by name belongs to artist
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  #returns songs associated to artists
  def self.song_count
    @@song_count
  end

end
