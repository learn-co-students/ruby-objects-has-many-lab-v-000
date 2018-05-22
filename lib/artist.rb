class Artist
  attr_accessor :name #has an attr_accessor for name
  attr_reader :songs

  @@song_count = 0 # class variable to track total number of songs associated with Artist class

  def initialize(name=nil) #is initialized with a name
    @songs = [] #is initialized with an empty collection of songs, has many songs
    self.name = name
  end

  def add_song(song) #takes in an argument of a song 
    self.songs << song #adds that song to the artist's collection
    song.artist = self #tells the song that it belongs to that artist
    @@song_count +=1 #increments the class wide song_count
  end

  def add_song_by_name(song_name) #takes in an argument of a song name
    x = Song.new(song_name) #creates a new song with the song name
    add_song(x) #associates the song and artist
  end

  #class method that returns the total number of songs associated to all existing artists
  def self.song_count
    @@song_count
  end

end