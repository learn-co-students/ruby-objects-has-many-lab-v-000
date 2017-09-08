class Artist

  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = [] #collection of many songs
  end

  def songs
    @songs
  end

  def add_song(song) #takes in an argument of a song
    @songs << song #adds that song to the artist's collection
    song.artist = self #tells the song that it belongs to that artist
    @@song_count += 1
  end

  def add_song_by_name(name) #takes in an argument of a song name
    song = Song.new(name) #creates a new song with it
    @songs << song #adds the new created song into the array collection
    song.artist = self #associates the song and artist
    @@song_count += 1
  end

  def self.song_count #returns total number of songs
    @@song_count
  end

end
