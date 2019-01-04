class Artist
  attr_accessor :song, :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end #end of initialize

  def self.song_count
    @@song_count
  end #end of self.song_count

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end #end of add_song

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end #end of add_song_by_name

  def songs
    @songs
  end #end of songs

end #end of Artist class
