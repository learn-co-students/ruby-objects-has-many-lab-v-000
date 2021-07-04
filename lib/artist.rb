class Artist
  attr_accessor :name, :songs
  @@songs = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@songs += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@songs += 1
  end
  
  def self.song_count
    @@songs
  end
end