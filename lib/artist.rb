class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1 #everytime you add a song, it needs to increment
  end

  def add_song_by_name(name) #takes in argument of a song name
    song = Song.new(name) #creates a new song
    add_song(song) #associates the song and artist
  end

  def self.song_count
    @@song_count #rb 15: returns number of songs
  end

end
