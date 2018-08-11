class Artist
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song  #has many
    song.artist = self #belongs to
  end 
    
  def add_song_by_name(name)
    s = Song.new
    self.add_song(s)
    s
  end
  
  def song_count
    self.songs.size
  end
  
end