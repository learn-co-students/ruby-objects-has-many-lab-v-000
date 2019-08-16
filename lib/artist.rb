class Artist
  # class
  @@song_count = 0
  def self.song_count
    @@song_count
  end
  
  # instance
  attr_accessor :name, :songs
  # initialization
  def initialize(name)
    @name = name
    @songs = []
  end
  # instance methods
  def add_song(song)
    self.songs << song
    @@song_count += 1
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
end