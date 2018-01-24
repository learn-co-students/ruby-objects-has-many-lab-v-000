class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name = nil)
    @name = name
    @songs = []
  end# of initialize

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end# of add_song

  def add_song_by_name(song_name)
    @songs << song = Song.new(song_name)
    song.artist = self
    @@song_count += 1 
  end# of add_song_by_name

  def self.song_count
    @@song_count
  end# of self.song_count

end# of class