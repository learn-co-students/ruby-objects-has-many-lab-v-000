class Artist
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(name)
    @songs << name
    @@song_count += 1
    name.artist = self
    name
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    song
  end
  
  def self.song_count
    @@song_count
  end

end