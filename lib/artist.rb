class Artist 
  
  attr_accessor :name, :artist
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
    
  def add_song(song)
    @songs << song
    song.artist = self #reciprocity
  end
    
  def add_song_by_name(songName)
    song = Song.new(songName)
    self.add_song(song)
  end
  
end