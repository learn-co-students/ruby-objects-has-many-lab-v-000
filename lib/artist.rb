#the Artist class
class Artist

  #class variable as integer
  @@song_count = 0

  attr_accessor :name, :songs

  #instantiated with a name
  #instantiated with an empty array to hold all songs
  def initialize(name)
    @name = name
    @songs = []
  end

  #using name, it instantiates a new song instance
  #it pushes into all songs array for instance (string)
  #it increments the class counter of songs
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

  #reader to expose the array of all songs
  def songs
    @songs
  end

  #reader to expose the class counter of all songs
  def self.song_count
    @@song_count
  end

end