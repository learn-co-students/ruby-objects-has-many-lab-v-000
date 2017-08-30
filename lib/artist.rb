class Artist

  #Artist #name has an attr_accessor for name
  #Artist #name #songs has many songs

  attr_accessor :name, :songs

  #Artist #new is initialized with a name
  #Artist #new is initialized with an empty collection of songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  #Artist #name #add_song takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist


  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

    #Artist #name #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  #Artist #name .song_count is a class method that returns the total number of songs associated to all existing artists

  #Artist #name .song_count uses the class variable, @@song_count
  def self.song_count
    @@song_count
  end

end
