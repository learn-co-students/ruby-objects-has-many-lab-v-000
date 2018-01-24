class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name) # is initialized with a name
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) # takes in an argument of a song
    @songs << song # adds that song to the artist's collection
    song.artist = self # associates the song and artist
    @@song_count += 1 # for #song_count
  end

  def add_song_by_name(song_name) # takes in an argument of a song name
    song = Song.new(song_name) # creates a new song
    @songs << song # adds that song to the artist's collection
    song.artist = self # associates the song and artist
    @@song_count += 1 # for #song_count
  end

  def self.song_count
    @@song_count
  end
end
