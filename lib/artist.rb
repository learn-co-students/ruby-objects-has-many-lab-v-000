class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song = Song.new(name)
    @songs << songs
    song.artist = self
  end
end